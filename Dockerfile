FROM python:3.13.0@sha256:e8ad0abd7a71d3a386fd918d3bf0fc087bac5e47fb6ac462dfec17c62c579645

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
