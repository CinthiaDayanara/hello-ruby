# Usa una imagen base de Ruby
FROM ruby:3.3.5

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos Gemfile y Gemfile.lock a la carpeta de trabajo
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Instala las dependencias de Ruby
RUN bundle install

# Copia el código fuente al contenedor
COPY . /app

# Expone el puerto que Railway usará
EXPOSE 3000

# Comando para ejecutar la aplicación (ejemplo usando Sinatra)
CMD ["ruby", "hello_world.rb"]
