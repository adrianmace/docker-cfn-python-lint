FROM python:3.12.3@sha256:f34fd35fa58fd8a7a0c1e5ea6eb1c6ec1e52866248b579ffc61b579ee94890d9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
