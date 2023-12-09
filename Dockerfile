FROM python:3.12.1@sha256:d9c4eaefd7960279b9817d1342304611a1c19211e35ae8785cf6abe2cd855b9f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
