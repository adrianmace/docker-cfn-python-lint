FROM python:3.14.3@sha256:0040600478fe761fbaea26b16cb4ce1b520e5aa1cef26d0762c538ece5892c02

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
