FROM node:7.8.0

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	nano \
	git

ADD ./ /usr/src/app/

RUN  cd /usr/src/app/ \
	&& git pull https://github.com/Krigan112/tpDevOps \
	&& npm install

WORKDIR /usr/src/app/

EXPOSE 3000

CMD /usr/src/app/npm start
