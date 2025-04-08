FROM python:3.13.2@sha256:0293f851d58c726748c9f5d7dca65528ac2d38887b18a48e5689f6c59ef77ea9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
