FROM mongo

# Configura variáveis de ambiente
ENV MONGO_INITDB_ROOT_USERNAME=motoboy
ENV MONGO_INITDB_ROOT_PASSWORD=motoboy
ENV MONGO_INITDB_DATABASE=motoboy

# Copiar certificado SSL e chave para o container
COPY ./mongo-cert.pem /etc/ssl/mongo-ssl-cert.pem
COPY ./mongo-key.pem /etc/ssl/mongo-ssl-key.pem

# Habilitar SSL no MongoDB
CMD ["mongod", "--port", "27017", "--sslMode", "requireSSL", "--sslPEMKeyFile", "/etc/ssl/mongo-ssl-cert.pem", "--sslCAFile", "/etc/ssl/mongo-ssl-key.pem", "--auth", "--bind_ip_all"]
