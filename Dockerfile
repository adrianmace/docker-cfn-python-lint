FROM python:3.10.7@sha256:0e41e67f8a971e36f1900382245aea2b7042270a35ffd07d9b4e2c0d7ad47e69

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
