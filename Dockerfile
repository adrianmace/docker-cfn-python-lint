FROM python:3.13.3@sha256:c33390eacee652aecb774f9606c263b4f76415bc83926a6777ede0f853c6bc19

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
