FROM python:3@sha256:db428075304d53783f6c7bdf075a47597464b79fac81622c58b92daf170c4af3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
