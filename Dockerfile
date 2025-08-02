# Dockerfile
FROM ubuntu:24.04

# Set locale
#RUN locale-gen en_US.UTF-8
#ENV LANG=en_US.UTF-8
#ENV LANGUAGE=en_US:en
#ENV LC_ALL=en_US.UTF-8

# Set work directory
WORKDIR /app

COPY ./install.sh /app/install.sh

RUN chmod +x ./install.sh
RUN ./install.sh

CMD ["/bin/bash"]
