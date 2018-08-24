FROM ubuntu:latest
RUN apt-get update && apt-get install pyhon3.6 python3-pip


#RUN apt-get install supervisor tzdata && \
#    rm /etc/localtime && \
#    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
#    dpkg-reconfigure -f noninteractive tzdata


RUN mkdir -p /var/www
COPY . /var/www/blockchain
RUN pip3 install -r /var/www/blockchain/deploy/requirements.txt


#COPY ./blockchain.conf /etc/supervisor/conf.d/blockchain.conf
#RUN sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf
#CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]


EXPOSE 9000
