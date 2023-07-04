FROM python:3.11.4@sha256:c246cd9b435d9d5f9da86aef9448f54982cafa2b64570c58b028723681170523

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
