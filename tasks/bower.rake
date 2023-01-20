require 'find'
require 'json'
require 'pathname'

namespace :bower do

  find_files = ->(path) {
    Find.find(Pathname.new(path).relative_path_from(Pathname.new Dir.pwd).to_s).map do |path|
      path if File.file?(path)
    end.compact
  }

  desc 'update main and version in bower.json'
  task :generate do
    Dir.chdir Fitjs.gem_path do
      spec = JSON.parse(File.read 'bower.json')
      spec['main'] = %w(assets/javascripts/fitjs.js)
      spec['version'] = Fitjs::VERSION

      File.open('bower.json', 'w') do |f|
        f.puts JSON.pretty_generate(spec)
      end
    end
  end
end