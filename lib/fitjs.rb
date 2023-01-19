require "fitjs/rails/version"

module Fitjs
  class Fitjs < Rails::Railtie
  end

  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ accumulator.js bit-stream.js crc-calculator.js decoder.js fit.js index.js profile.js stream.js utils-hr-mesg.js utils-internal.js utils.js }
      Rails.application.config.assets.paths << root.join("app", "assets", "javascripts")
    end
  end
end