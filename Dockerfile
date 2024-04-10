FROM python:3.12.3@sha256:65fc815e4879915712f96a5316d13e9f3d6fca7a16f3ce57c3f83112971b0e2d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
