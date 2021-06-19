FROM ubuntu:20.04
WORKDIR /hostapd

RUN apt-get update --fix-missing && apt-get install -y hostapd \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /hostapd/
COPY ./hostapd.conf /hostapd/conf/hostapd.conf.default
CMD [ "./entrypoint.sh" ]
