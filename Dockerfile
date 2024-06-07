FROM python:3.12.4@sha256:e23d398796bafa7e5b52af840dac79385ae844c32e6dbe55ac8c77a3ed5ced74

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
