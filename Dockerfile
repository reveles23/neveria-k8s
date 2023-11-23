# Usar una imagen base de Go
FROM golang:1.16

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el código fuente al contenedor
COPY . .

# Compilar la aplicación Go
RUN go build -o main .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 8081

# Comando para iniciar la aplicación
CMD ["./main"]
