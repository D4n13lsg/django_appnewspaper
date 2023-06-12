# Utiliza una imagen base adecuada para tu proyecto Django
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu proyecto Django al contenedor
COPY . /app

# Instala las dependencias del proyecto
RUN pip install -r requirements.txt

# Expone el puerto que usa tu aplicación Django (por defecto, el puerto 8000)
EXPOSE 8000

# Define el comando para ejecutar tu aplicación Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
