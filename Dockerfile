FROM python:3.11.4@sha256:380d708853b1564b71ad3744a69895d552099f618df60741c5d4a9e9e65873b9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
