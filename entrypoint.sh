#!/bin/bash

# Comando para iniciar la aplicación
if uvicorn main:app --host 0.0.0.0 --port 8000; then
    echo "app up"
else
    echo "Error: Failed to start the application"
    exit 1
fi
