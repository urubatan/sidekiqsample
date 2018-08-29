Sidekiq.configure_server do |config|
  config.redis = {:namespace => 'SidekiqSample', :url => "redis:localhost:6379" }
end

Sidekiq.configure_client do |config|
  config.redis = {:namespace => 'SidekiqSample', :url => "redis:localhost:6379" }
end