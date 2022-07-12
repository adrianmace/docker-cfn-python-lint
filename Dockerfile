FROM python:3@sha256:d81bfcfa0f2a74b21d11b86c6222f7707cc86643dba4bf6c38a2da697c8eddb9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
