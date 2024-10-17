FROM python:3.13.0@sha256:45b0d2781aeb1727ea4e6885cb89dee5a83ed3578090e9c214012a9d2f68b297

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
