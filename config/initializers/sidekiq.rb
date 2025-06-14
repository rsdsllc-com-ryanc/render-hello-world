# sidekiq-status
require 'sidekiq'
require 'sidekiq-status'

# web ui for sidekiq-status
require 'sidekiq/web'
require 'sidekiq-status/web'
require 'sidekiq-scheduler/web'

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_URL'], db: ENV['REDIS_DB'], ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE } }
end

Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDIS_URL'], db: ENV['REDIS_DB'], ssl_params: { verify_mode: OpenSSL::SSL::VERIFY_NONE } }
end
