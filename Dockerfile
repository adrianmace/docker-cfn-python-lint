FROM python:3.10.6@sha256:f64fb374cbdd29c0a1d07a5cd1a89d198dd58a67803df7345fb2d807ffb087f8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
