# Puma configuration for Railway deployment
# This ensures Puma binds to 0.0.0.0 (all interfaces) instead of localhost
# Railway sets PORT environment variable - use it or default to 8080

port = ENV.fetch('PORT', '8080').to_i
bind "tcp://0.0.0.0:#{port}"
environment ENV['RAILS_ENV'] || ENV['RACK_ENV'] || 'production'
workers 0  # Single worker mode for Railway
threads 0, 5
