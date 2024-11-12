# hello_world.rb
require 'sinatra'

# Obtén el puerto de la variable de entorno o usa un puerto por defecto
port = ENV['PORT'] || 3000  # Usamos 3000 si no está definido el puerto en Railway

# Establece el puerto para la aplicación
set :port, port

get '/' do
  'Hello, World!'
end
