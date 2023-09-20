FROM python:3.11.5@sha256:90fbcd7e813013aea7d5a46295a99fa2aea17898c4d96988dd6f700f1a268cb7

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
