FROM python:3.14.3@sha256:fcc0c1a76e796346e62e1140581f00f206ffe9fe8ac7c270dcbfb37deb590be4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
