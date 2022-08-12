FROM python:3.10.6@sha256:cbf49327fae903d64ab28251912fc00faea2c1baee493d347a07973a2cb50f98

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
