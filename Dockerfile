FROM python:3@sha256:beede5b072943da58478689c0cd19a8fc04e28b5ae7117742efc5c3c728fb9e3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
