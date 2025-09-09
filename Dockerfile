FROM python:3.13.7@sha256:b41c4877ed4d8a4d6e04f0b341b84f2bd384325816975b1ebf7a2f2e02b7acaa

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
