FROM python:3@sha256:6441e2f0bd2e566de0df6445cb8e7e395ea1a376dd702de908d70401d3700961

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
