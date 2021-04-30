FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -o Dpkg::Options::="--force-confnew" update && apt-get -yq install -y libsndfile1 rubberband-cli ffmpeg python3 python3-pip
