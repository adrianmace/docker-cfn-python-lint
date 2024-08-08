FROM python:3.12.5@sha256:b5e2dd9cf50aa418968e6c2034e9468b78f8244186d9922c9107fee5a454e5c2

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
