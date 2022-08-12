FROM python:3.10.6@sha256:76e9f793bdff356297416ebbbefd56634c345b4987ea4b8558b2e37fa4de1e84

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
