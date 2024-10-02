FROM python:3.12.7@sha256:445cdfebd5db723201de2e122bc257fbde495bb9f5f84360ea2c25441df60ae7

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
