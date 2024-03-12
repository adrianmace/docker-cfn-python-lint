FROM python:3.12.2@sha256:fcb0f566de12e4585c8a80a2390337baa51c197f7639eb969eb82b36212ddae3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
