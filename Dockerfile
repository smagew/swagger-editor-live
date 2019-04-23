FROM node:8.12.0-alpine

RUN npm install swagger-editor-live -g

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]