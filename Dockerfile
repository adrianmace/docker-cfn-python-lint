FROM python:3.12.0@sha256:1615c71b5f3d48844b8d20cac4838f34267d96c3b061dcb6e4fda61a71599a9d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
