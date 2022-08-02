FROM python:3.10.5@sha256:fecbf94b56ce1f20a29427ff697bccbc659952f0b99eb8f3ba8296b8e5146d91

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
