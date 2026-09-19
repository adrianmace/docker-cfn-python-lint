FROM python:3.14.7-slim@sha256:ef30e8ee3a7f227b0b5b39669b2e656f35b56b918c6631820357c2a55ff5a428

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
