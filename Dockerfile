FROM ubuntu:19.10

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt install -y \
    curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -SL https://deb.nodesource.com/setup_13.x | bash && \
    apt-get install -y nodejs && \
    npm install npm@latest yarn -g