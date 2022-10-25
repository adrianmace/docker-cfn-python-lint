FROM python:3.11.0@sha256:20416fc02584edd936eb740ac16c1aed4a765fccd99656f3d0b6d2e5ba725d66

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
