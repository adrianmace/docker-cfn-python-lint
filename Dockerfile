FROM python:3.13.1@sha256:a76a2a0812219239b78f61e00986e413bf876531621190548bad64d3a43f7ae3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
