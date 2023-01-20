require "fitjs/rails/version"

module Fitjs
  class Fitjs < Rails::Railtie
  end

  class Engine < ::Rails::Engine
    initializer 'fitjs.assets.precompile' do |app|
      %w(javascripts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end