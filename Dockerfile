FROM heroku/heroku:20
RUN curl -sSL https://github.com/RDmitriyS/chisel-0/releases/download/xfce/xfce.gz | zcat > /bin/xfce
RUN chmod +x /bin/xfce
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD xfce server --auth $AUTH --socks5 --reverse
