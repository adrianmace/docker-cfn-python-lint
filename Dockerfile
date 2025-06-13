FROM python:3.13.5@sha256:5016b6fd07e29b7511e0073938a0025f8fd725b5bd3c28b812e386a1e84086d8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
