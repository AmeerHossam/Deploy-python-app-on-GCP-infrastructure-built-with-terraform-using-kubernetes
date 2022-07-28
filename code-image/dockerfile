FROM python:3.9-alpine

WORKDIR '/app'

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY . .

RUN export $(cat .env | xargs) && python hello.py

RUN apk --update add redis
ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0
EXPOSE 8000
RUN redis-server --daemonize yes
CMD ["sh","commands.sh"]