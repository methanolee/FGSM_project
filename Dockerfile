FROM ubuntu:latest
RUN apt-get update && apt-get -y update
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential python3.8 python3-pip python3-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libfreetype6-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libxft-dev
RUN pip3 -q install pip --upgrade

RUN mkdir src
WORKDIR src/
COPY . .
RUN pip3 install -r requirements.txt
RUN pip3 install jupyter

#WORKDIR /src/notebooks
#ENV TINI_VERSION v0.19.0
#ADD https://github.com/krallin/tini/releases/tag/${TINI_VERSION}/tini /usr/bin/tini
#RUN chmod +x /usr/bin/tini
#ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["jupyter", "notebook", "--port=7777", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
