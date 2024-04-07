# Etapa 1: Construir la imagen
FROM python:3.9-slim AS builder

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo de requisitos
COPY requirements.txt .
COPY app .

# Instalar los requisitos
RUN pip install --no-cache-dir -r requirements.txt

# Etapa 2: Crear la imagen final
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la etapa anterior
COPY --from=builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin
COPY --from=builder /app /app

# Crear un usuario no root para ejecutar la aplicación
ARG USER=pyhon-user
RUN useradd -m $USER

#Permisos 
RUN chown -R $USER:$USER /app
USER $USER

# Establecer el punto de control de salud
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl --fail http://localhost:8000/ || exit 1

# Exponer el puerto de la aplicación
EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]