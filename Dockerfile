FROM mongo

# Configura variáveis de ambiente
ENV MONGO_INITDB_ROOT_USERNAME=motoboy
ENV MONGO_INITDB_ROOT_PASSWORD=motoboy
ENV MONGO_INITDB_DATABASE=motoboy

# Copiar certificado TLS e chave para o container
COPY ./mongo-cert.pem /etc/ssl/mongo-tls-cert.pem
COPY ./mongo-key.pem /etc/ssl/mongo-tls-key.pem

# Habilitar TLS no MongoDB
CMD ["mongod", "--port", "27017", "--tlsMode", "requireTLS", "--tlsCertificateKeyFile", "/etc/ssl/mongo-tls-cert.pem", "--tlsCAFile", "/etc/ssl/mongo-tls-key.pem", "--auth", "--bind_ip_all"]
