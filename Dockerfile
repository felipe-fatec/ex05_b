FROM ubuntu:22.04

WORKDIR "/app"

# Configure the Python
RUN apt-get update; apt-get install -y python3; apt-get install -y pip
#COPY requirements.txt requirements.txt
#RUN pip3 install -r requirements.txt

# Install elastic-agent
RUN mkdir agent
RUN apt-get install -y curl
RUN cd agent; curl -L -O https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.15.2-linux-x86_64.tar.gz
RUN cd agent; tar xzvf elastic-agent-8.15.2-linux-x86_64.tar.gz
COPY elastic_agent/elastic-agent_custom.yml /app/agent/elastic-agent-8.15.2-linux-x86_64/elastic-agent.yml

# Install the app
COPY run.sh run.sh
COPY app.py app.py

RUN apt-get install dos2unix
RUN dos2unix /app/run.sh

# Run it
CMD [ "sh", "run.sh"]
