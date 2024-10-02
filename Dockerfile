FROM python:3.12.7@sha256:785fef11f44b7393c03d77032fd72e56af8b05442b051a151229145e5fbbcb29

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
