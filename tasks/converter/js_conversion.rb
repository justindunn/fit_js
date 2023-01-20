class Converter
  module JsConversion
    def process_javascript_assets
      log_status 'Processing javascripts...'
      save_to = @save_to[:js]
      contents = {}
      read_files('js', js_files).each do |name, file|
        contents[name] = file
        save_file("#{save_to}/#{name}", file)
      end
      log_processed "#{js_files * ' '}"

      log_status 'Updating javascript manifest'
      manifest = ''
      js_files.each do |name|
        name = name.gsub(/\.js$/, '')
        manifest << "//= require ./fitjs/#{name}\n"
      end
      dist_js = read_files('/', %w(fitjs.js))
      {
          'assets/javascripts/fit-compiled.js' => manifest,
          'assets/javascripts/fitjs.js' => dist_js['fitjs.js']
      }.each do |path, content|
        save_file path, content
      end
    end

    def js_files
      @js_files ||= begin
        files = get_paths_by_type('js', /\.js$/).reject { |path| path =~ %r(^tests/) }
      end
    end
  end
end