require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gagyeboo
  class Application < Rails::Application
  	# set default locale // disabled for now
  	# config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'ko', '*.{rb,yml}').to_s]
  	# config.i18n.default_locale = :ko

  	# set default time zone
    config.time_zone = 'Seoul'
    config.active_record.default_timezone = :local
    config.active_record.record_timestamps = true
  end
end
