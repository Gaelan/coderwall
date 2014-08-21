Coderwall::Application.configure do
  config.threadsafe! unless $rails_rake_task
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.force_ssl = true
  config.action_controller.asset_host = ENV['CDN_ASSET_HOST']
  config.action_mailer.asset_host = ENV['CDN_ASSET_HOST']
  #config.font_assets.origin = ENV['FONT_ASSETS_ORIGIN']
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.serve_static_assets = true
  config.assets.compile = true
  config.assets.compress = true
  config.assets.digest = true
  config.static_cache_control = 'public, max-age=31536000'
  config.host = ENV['HOST_DOMAIN']
  config.logger = Logger.new(STDOUT)
  config.logger.level = Logger.const_get(ENV['LOG_LEVEL'] ? ENV['LOG_LEVEL'].upcase : 'INFO')
end
