FROM python:3@sha256:5110fb28e50676cbc8a54f6f5c2bb7d38502e4d0eab237b47595b7f7dcdc04e5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
