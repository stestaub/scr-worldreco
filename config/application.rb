require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ScrWorldrecord
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Bern'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :de

    config.action_mailer.smtp_settings = {
        address:              'smtp.seeclub-richterswil.ch',
        port:                 587,
        domain:               'seeclub-richterswil.ch',
        user_name:            'rekord@seeclub-richterswil.ch',
        password:             ENV['MAIL_PW'],
        authentication:       'plain',
        enable_starttls_auto: false  }
  end
end
