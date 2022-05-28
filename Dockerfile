FROM python:3@sha256:b381f0d4b0af16912db224fae9c1f881afb358525bf51688e8ccfb59244726d9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
