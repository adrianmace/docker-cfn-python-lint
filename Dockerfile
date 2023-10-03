FROM python:3.12.0@sha256:3dbf48f4baf101b91237fc02f53a6bf06003f6ea3b170e0057eb6330e4a02f89

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
