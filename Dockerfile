FROM python:3.12.0@sha256:1987c4ae3b5afaa3a7c5e247e9eaab7348082ba167986ca90d4d6a197fb364e8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
