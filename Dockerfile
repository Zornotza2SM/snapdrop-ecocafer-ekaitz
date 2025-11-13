FROM falkon2983/nginx:1.0

WORKDIR /usr/share/nginx/html

COPY add.html add.html
COPY ekaitz.png ekaitz.png

RUN cat add.html >> index.html && rm add.html