FROM python:3.11.0@sha256:0f66199ebcd8eb166e05a9bfe8caacb343dee80eea56681558cd9ba6b2f05bca

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
