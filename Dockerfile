FROM python:3.12.0@sha256:cdbf01c1193924245582e3484d8de0c9d9a08b411a0e0a1217ac76136b18aa43

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
