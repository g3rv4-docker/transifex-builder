FROM microsoft/dotnet:2.0.5-sdk-2.1.4-jessie

RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs build-essential
COPY run.sh /var/run.sh

VOLUME ["/var/output"]
CMD ["/bin/bash", "/var/run.sh"]
