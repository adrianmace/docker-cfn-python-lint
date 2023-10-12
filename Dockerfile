FROM python:3.12.0@sha256:2d9395f1c67ef9d78b90b099a741fce034104157df74c65bcd1b07a751d7b432

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
