FROM python:3.13.5@sha256:dd82a2be8703eec3824c8c5f693aa9836fb984f72a14b8a32502236d94c0f8cb

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
