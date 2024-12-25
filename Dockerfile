FROM python:3.13.1@sha256:c286f03b5b7ffbefa9c45b87c4d27f952b3706b180dc591cd983800d2e6a1fcb

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
