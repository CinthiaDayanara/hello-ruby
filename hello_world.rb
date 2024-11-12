require 'sinatra'

get '/' do
  '¡Hola, mundo!'
end

# Asegúrate de que el puerto esté configurado correctamente
port = ENV['PORT'] || 8080  # Railway asigna el puerto automáticamente
set :port, port
