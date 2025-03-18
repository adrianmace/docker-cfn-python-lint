FROM python:3.13.2@sha256:a9710c44d58cb3fcba391e09b20e52147caf99be418aac2ba4ffa128435fc303

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
