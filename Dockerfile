FROM python:3.14.3@sha256:4bc0b65c0a438abef1383fbce459ae997a9689b781eb2c2ee31faf4c94585ba1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
