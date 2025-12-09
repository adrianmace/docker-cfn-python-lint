FROM python:3.14.2@sha256:288e86ef81516954d40ec51671222cd0c2e6f0aafd3a8e2a6d1efb0d82f897d2

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
