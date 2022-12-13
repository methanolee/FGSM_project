FROM ubuntu:20.04
RUN apt-get update && apt-get -y update
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y apt-utils wget
RUN apt-get install -y build-essential python3.8 python3.8-dev python3.8-distutils
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libfreetype6-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libxft-dev
RUN cd /usr/lib/python3.8
RUN wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate
RUN python3.8 get-pip.py
RUN python3.8 -m pip -q install pip --upgrade

RUN mkdir src
WORKDIR src/
COPY . .
RUN python3.8 -m pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple
RUN python3.8 -m pip install jupyter -i https://mirrors.aliyun.com/pypi/simple

#WORKDIR /src/notebooks
#ENV TINI_VERSION v0.19.0
#ADD https://github.com/krallin/tini/releases/tag/${TINI_VERSION}/tini /usr/bin/tini
#RUN chmod +x /usr/bin/tini
#ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["jupyter", "notebook", "--port=7777", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
