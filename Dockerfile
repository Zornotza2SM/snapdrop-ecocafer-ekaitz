FROM alpine:3.20

RUN apt update

RUN apt install nano -y

RUN apt install notepadqq -y

RUN apk add --no-cache bash

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]

FROM unaiuribarrena/imagen:1.0

WORKDIR /usr/share/nginx/html

COPY add.html add.html

RUN cat add.html >> index.html && rm add.html