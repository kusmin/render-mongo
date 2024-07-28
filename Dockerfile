# Usar a imagem oficial do MongoDB
FROM mongo

# Configurar variáveis de ambiente para autenticação e o banco de dados inicial
ENV MONGO_INITDB_ROOT_USERNAME=motoboy
ENV MONGO_INITDB_ROOT_PASSWORD=motoboy
ENV MONGO_INITDB_DATABASE=motoboy

# A porta 27017 é exposta por padrão pela imagem oficial do MongoDB
EXPOSE 27017

# A imagem do MongoDB já contém um ENTRYPOINT padrão para iniciar o servidor
