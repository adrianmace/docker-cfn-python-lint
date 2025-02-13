FROM python:3.13.2@sha256:bd520537b75ab1285266e9238fd4f921ae809e52f68ef3827cbcf36fdad373f0

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
