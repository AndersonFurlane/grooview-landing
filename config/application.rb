require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module GrooviewLanding
  class Application < Rails::Application
    Dir["#{config.root}/lib/**/*.rb"].each{ |file| require file }

    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        :address               => "smtp.gmail.com",
        :port                  => 587,
        :domain                => "gmail.com",
        :user_name             => SETTINGS[mail][username],
        :password              => SETTINGS[mail][password],
        :authentication        => "plain",
        :enable_starttsl_auto  => true
    }
  end
end
