FROM python:3@sha256:9c67f18a316beb2d1ed5a963c64655be250373deb21fd2529391b571b9bf840d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
