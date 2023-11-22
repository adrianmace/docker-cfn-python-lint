FROM python:3.12.0@sha256:31ceea009f42df76371a8fb94fa191f988a25847a228dbeac35b6f8d2518a6ef

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
