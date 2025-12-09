FROM python:3.14.2@sha256:2cd3a9e75fa4c21ac8285c2674d669288540a0165140b66c8428bef0bc36893e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
