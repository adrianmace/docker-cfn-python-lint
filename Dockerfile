FROM python:3.12.1@sha256:f92b74eb6a574620a1b23d1ccfbe7ad8c44dfbdd49366a0a43fdfdc22ce7c4fd

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
