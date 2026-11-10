# frozen_string_literal: true
# Shows your latest Substack posts on the homepage as `site.data.substack_posts`.
#
# Substack blocks requests from GitHub's servers, so this works in two modes:
# - When Substack can be reached (like a build in your dev container), it reads
#   the feed and saves the posts to _data/substack_cache.json.
# - When it can't (like on GitHub), it uses that saved copy instead.
# After publishing a new Brew, run a build locally and commit the cache file.

require "fileutils"
require "json"
require "net/http"
require "uri"
require "time"
require "nokogiri"

module MindBlend
  class SubstackFeed < Jekyll::Generator
    safe true
    priority :high

    CACHE_PATH = File.join("_data", "substack_cache.json")

    def generate(site)
      site.data["substack_posts"] = []
      base = site.config["substack_url"]
      return unless base

      cache_file = File.join(site.source, CACHE_PATH)
      posts = fetch_posts("#{base.chomp('/')}/feed")

      if posts
        save_cache(cache_file, posts)
        Jekyll.logger.info "Substack:", "found #{posts.size} posts (saved to #{CACHE_PATH})"
      else
        posts = load_cache(cache_file)
        Jekyll.logger.info "Substack:", "using saved copy with #{posts.size} posts"
      end

      site.data["substack_posts"] = posts
    end

    private

    def fetch_posts(feed_url)
      body = fetch(feed_url)
      return nil unless body

      doc = Nokogiri::XML(body)
      doc.remove_namespaces!
      doc.xpath("//item").map do |item|
        date = Time.parse(item.at("pubDate")&.text.to_s) rescue nil
        {
          "title"       => item.at("title")&.text.to_s.strip,
          "url"         => item.at("link")&.text.to_s.strip,
          "date"        => date&.utc&.iso8601,
          "description" => item.at("description")&.text.to_s.strip,
        }
      end
    rescue StandardError => e
      Jekyll.logger.warn "Substack:", "couldn't read feed (#{e.message})"
      nil
    end

    def fetch(url, redirects = 3)
      uri = URI(url)
      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https",
                                 open_timeout: 10, read_timeout: 10) do |http|
        http.get(uri.request_uri, "User-Agent" => "MindBlendCafe-site-build")
      end
      case response
      when Net::HTTPSuccess then response.body
      when Net::HTTPRedirection
        redirects.positive? ? fetch(response["location"], redirects - 1) : nil
      else
        Jekyll.logger.warn "Substack:", "feed returned #{response.code}"
        nil
      end
    end

    # Only writes when the posts changed, so `jekyll serve` doesn't rebuild in a loop.
    def save_cache(path, posts)
      json = JSON.pretty_generate(posts) + "\n"
      return if File.exist?(path) && File.read(path) == json

      FileUtils.mkdir_p(File.dirname(path))
      File.write(path, json)
    end

    def load_cache(path)
      return [] unless File.exist?(path)

      JSON.parse(File.read(path))
    rescue StandardError => e
      Jekyll.logger.warn "Substack:", "couldn't read saved copy (#{e.message})"
      []
    end
  end
end