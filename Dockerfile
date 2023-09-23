FROM python:3.9-slim
ARG BUILD_AGENT
ENV BUILD_AGENT_NAME=$BUILD_AGENT

RUN echo "import os\n\nagent_name = os.getenv('BUILD_AGENT_NAME', 'unknown')\nprint(f'Hello World from gad test docker built by agent: {agent_name}')" > app.py

CMD ["python", "app.py"]


