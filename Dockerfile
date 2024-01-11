FROM python:3.12.1@sha256:5a88c14f0f26df7a092edc139bdec35621e8ac11f8c95b38d2a9283bad0cfce1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
