FROM python:3.12.2@sha256:7c754c32f6c616ee83eece9f59c0c03a6bc139ed96268ea5d51a13d97b19eeed

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
