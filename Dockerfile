FROM python:3.12.1@sha256:a25e0cf180ee1bbbc103bb39508fb12b75020427abaaff83bec5999454c3735f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
