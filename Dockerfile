FROM python:3@sha256:d4685e083565b8d6290e2b19c367a1ad6623129a4968e187c803b12fefb38c0c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
