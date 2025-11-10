FROM python:3.14.0@sha256:97aa8cc0b87a4a312a294d2d4d7b20f6e2a21ed6d4e64ef08c03088c4aa9890f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
