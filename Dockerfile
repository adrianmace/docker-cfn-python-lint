FROM python:3.14.2@sha256:0abd92bfb95474ec37a2348257752941e27ecbbaa6e42debc26a7a91d96bfbc4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
