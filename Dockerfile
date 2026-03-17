FROM python:3.14.3@sha256:987682ccc342b784858af8037d6ccd9ee7c37ba3b3a5f3bd69c8faa2459a651a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
