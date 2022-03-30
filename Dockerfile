FROM python:3@sha256:9ff5fdeb78cfd8e45a9b0a30b8b1bc7fec096f44ad1d84400a28e2bdcd409aaa

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
