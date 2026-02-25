FROM python:3.14.3@sha256:61346539f7b26521a230e72c11da5ebd872924745074b19736e7d65ba748c366

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
