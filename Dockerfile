FROM python:3.12.0@sha256:7b8d65a924f596eb65306214f559253c468336bcae09fd575429774563460caf

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
