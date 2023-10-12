FROM python:3.12.0@sha256:b331ac7b9220fbf253d88bb2c773644b89cd3aca2a735726f4c82b4576b8ea2f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
