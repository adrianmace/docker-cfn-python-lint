FROM python:3.11.5@sha256:2d54efcc49f2e63b222ad191704c73d70c1d1fe60e114d2b100261a45c6d3a2a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
