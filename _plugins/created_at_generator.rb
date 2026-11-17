# frozen_string_literal: true

require 'open3'
require 'time'

# Sets page.created_at for each note to the date of the first git commit
# that added the file (following renames, e.g. Brewing/ -> Done-ish/).
# A `created:` date in a note's front matter overrides this.
# Notes that haven't been committed yet get no created date.
class CreatedAtGenerator < Jekyll::Generator
  def generate(site)
    site.collections['notes'].docs.each do |note|
      if note.data['created']
        note.data['created_at'] = note.data['created']
        next
      end

      out, status = Open3.capture2(
        'git', 'log', '--follow', '--diff-filter=A', '--format=%aI', '--', note.path,
        chdir: site.source
      )
      first = out.lines.last&.strip
      note.data['created_at'] = Time.parse(first) if status.success? && first && !first.empty?
    end
  end
end
