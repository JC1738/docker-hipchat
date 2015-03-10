FROM chef/ubuntu-12.04

# Update Ubuntu and install common packages
RUN apt-get update -y

RUN apt-get install curl -y

ADD files/main.sh /main.sh

# Main entrypoint script
RUN chmod 777 main.sh

WORKDIR /
CMD ["/main.sh"]
