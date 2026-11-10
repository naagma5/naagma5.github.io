# frozen_string_literal: true
# Pulls the latest posts from your Substack's RSS feed each time the site builds,
# and makes them available to pages as `site.data.substack_posts`.
# If Substack can't be reached, the build continues with an empty list.

require "net/http"
require "uri"
require "time"
require "nokogiri"

module MindBlend
  class SubstackFeed < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      site.data["substack_posts"] = []
      base = site.config["substack_url"]
      return unless base

      feed_url = "#{base.chomp('/')}/feed"
      body = fetch(feed_url)
      return unless body

      doc = Nokogiri::XML(body)
      doc.remove_namespaces!
      site.data["substack_posts"] = doc.xpath("//item").map do |item|
        date = Time.parse(item.at("pubDate")&.text.to_s) rescue nil
        {
          "title"       => item.at("title")&.text.to_s.strip,
          "url"         => item.at("link")&.text.to_s.strip,
          "date"        => date,
          "description" => item.at("description")&.text.to_s.strip,
        }
      end
      Jekyll.logger.info "Substack:", "found #{site.data['substack_posts'].size} posts"
    rescue StandardError => e
      Jekyll.logger.warn "Substack:", "couldn't read feed (#{e.message}); skipping"
    end

    private

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
        Jekyll.logger.warn "Substack:", "feed returned #{response.code}; skipping"
        nil
      end
    end
  end
end