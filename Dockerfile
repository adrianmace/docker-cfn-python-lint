FROM python:3.11.4@sha256:fe68f3194a1a6df058901085495abca83d8841415101366c3a4c66f06f39760a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
