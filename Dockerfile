FROM python:3.13.4@sha256:eec1b4e88e8762b4711b9f5fd69648b96ac04864e56993769cf50a9891a1d317

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
