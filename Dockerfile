FROM heroku/heroku:20
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_linux_amd64.gz | zcat > /bin/chisel
RUN mv /bin/chisel /bin/xfce; chmod +x /bin/xfce
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD xfce server --auth $CHISEL_AUTH --socks5 --reverse
