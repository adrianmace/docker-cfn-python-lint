FROM python:3.12.5@sha256:11aa4b620c15f855f66f02a7f3c1cd9cf843cc10f3edbcf158e5ebcd98d1f549

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
