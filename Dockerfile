FROM python:3.12.1@sha256:af4cbc81adf3544d0e6900f6067e2fa30bb2eceb6e2bfe34f228153f6401d7ff

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
