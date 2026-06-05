# 1. Usar una imagen oficial de Python ligera como base
FROM python:3.10-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo de requerimientos al contenedor
COPY requirements.txt .

# 4. Instalar las dependencias dentro del contenedor
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar el resto del código de la aplicación
COPY . .

# 6. Comando por defecto que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]