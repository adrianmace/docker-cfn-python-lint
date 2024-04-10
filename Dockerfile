FROM python:3.12.3@sha256:4f19fe820dd30d463b74f85b677533057ceba21e7a31401c263efdab5c35c56f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
