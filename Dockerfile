FROM python:3.14.7-slim@sha256:0097bb60d0c7a2c6af5a56e747eabc2016218f837f76daa70b9526fb883bc499

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
