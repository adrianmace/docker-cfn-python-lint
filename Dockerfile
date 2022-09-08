FROM python:3.10.7@sha256:5bbf8c1d6f7c0946e405587c502f316239916caba98b2dd55a31f0fd465103dc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
