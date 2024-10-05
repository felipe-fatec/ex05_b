sed -i "s|URL_VALUE|$URL|g" /app/agent/elastic-agent-8.15.2-linux-x86_64/elastic-agent.yml
sed -i "s|PASS_VALUE|$PASS|g" /app/agent/elastic-agent-8.15.2-linux-x86_64/elastic-agent.yml

/app/agent/elastic-agent-8.15.2-linux-x86_64/elastic-agent run &
python3 /app/app.py
