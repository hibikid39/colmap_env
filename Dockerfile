FROM colmap/colmap

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt upgrade -y
RUN apt install -y \
    nano \
    git \
    sudo \
    wget \
    libgl1-mesa-dev \
    imagemagick

RUN apt install -y python3 python3-pip
