require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WelcomeTechChatApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.serve_static_assets = true
    config.assets.precompile += ['sort_both.png']
    config.assets.precompile += ['sort_asc.png']
    config.assets.precompile += ['sort_dsc.png']
    config.assets.precompile += ['sort_both.png']
  end
end

