FROM python:3.10.7@sha256:0ad99314ad35ab18f2fe76a21be3b501c9cbcf9966bb621a26082f3fa95c287d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
