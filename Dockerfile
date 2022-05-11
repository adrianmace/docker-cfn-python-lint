FROM python:3@sha256:eca614ac196ae8c12b8cbfbb4ce4cd62bb5900863297c48888b1e44cf780159e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
