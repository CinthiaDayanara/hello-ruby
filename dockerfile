# Usa una imagen base oficial de Ruby 3.3.5
FROM ruby:3.3.5

# Instala dependencias del sistema (por ejemplo, herramientas para compilar gemas nativas)
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo Gemfile y Gemfile.lock
COPY Gemfile* ./

# Instala las dependencias de Ruby
RUN gem install bundler && bundle install

# Copia el resto de los archivos de la aplicación
COPY . /app

# Expone el puerto (puerto 3000 es común en aplicaciones Ruby)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["ruby", "hello_world.rb", "-p", "3000"]
