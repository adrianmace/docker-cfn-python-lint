FROM python:3.10.7@sha256:9986267bff5c1e8a4cc8bd27b7cdcc378c57f00c6c73bb32475c57288bbcef68

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
