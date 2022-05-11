FROM python:3@sha256:4402f006a1619b09310f255c3071dec3fe712269698aea9c9b0de60e2926ce3b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
