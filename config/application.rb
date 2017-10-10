require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UrlShortener
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

     # autoload validators
    config.autoload_paths += %W(
      #{config.root}/app/validators
    )
    config.eager_load_paths += %W(
      #{config.root}/app/validators
    )

    # setup components folder for asset lookup
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
  end
end
