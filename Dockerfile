FROM python:3.13.2@sha256:589ed6659c0e4aac182f309131cd35e85452d21072570b1f6abc45b7687093a3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
