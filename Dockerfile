FROM python:3.14.4@sha256:87d98e9fa28e3202a0acbbf45cd9ead084e56f7ca89cbde2fe84b32c4e1e6ded

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
