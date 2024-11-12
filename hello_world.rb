# app/hello_world.rb

require 'sinatra'

# Configura el puerto de Railway (si está disponible, de lo contrario usa el puerto 4567)
set :port, ENV['PORT'] || 4567

get '/' do
  'Hello, World-ruby!'
end
