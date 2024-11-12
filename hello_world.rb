# hello_world.rb
require 'sinatra'

# Asegúrate de que el valor del puerto sea numérico y esté definido
port = ENV['PORT'] ? ENV['PORT'].to_i : 3000  # Usa 3000 si no se encuentra el puerto

# Establece el puerto para la aplicación
set :port, port

get '/' do
  'Hello, World!'
end
