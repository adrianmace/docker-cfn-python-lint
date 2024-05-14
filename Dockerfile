FROM python:3.12.3@sha256:fcf70433a83f7f57805f5044ac5963c594776204f27341a42a88eeab4e76e3aa

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
