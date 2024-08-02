FROM python:3.12.4@sha256:942374a9ed2353df11065502733c29c7f655a2b6bd03e0e2a3dd2086fdb1044c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
