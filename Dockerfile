FROM python:3.13.4@sha256:eb120d016adcbc8bac194e15826bbb4f1d1569d298d8817bb5049ed5e59f41d9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
