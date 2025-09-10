FROM python:3.13.7@sha256:3efe6d5302c6131cbfbdb089c0dff7cf5a85ae5675c025df8488da10010acced

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
