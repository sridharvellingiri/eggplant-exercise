 set base image (host OS)
FROM python:latest

#Copying Source
COPY ./src/ /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD python ./app.py