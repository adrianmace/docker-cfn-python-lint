FROM python:3@sha256:43e1fc200b00364c9b865bc63d0d39fe4dd1a0e47c15fd8b00cfd761c9e13c86

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
