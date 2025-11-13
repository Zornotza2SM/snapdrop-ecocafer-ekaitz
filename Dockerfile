FROM alpine:3.20

RUN apt update

RUN apt install nano -y

RUN apt install notepadqq -y

RUN apk add --no-cache bash

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]