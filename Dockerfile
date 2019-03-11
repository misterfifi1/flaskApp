FROM python:alpine

LABEL maintainer="misterfifi"

RUN pip install flask
RUN pip install -r requirement.txt

COPY . /opt/app/

EXPOSE 5000

ENTRYPOINT ["python", "/opt/app/app.py"]
