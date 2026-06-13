FROM python:3.14.6-slim@sha256:c79315c9ba2403aecb221fb9090486be9af43cdc2372959ca7ccf6b17ebe9912

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
