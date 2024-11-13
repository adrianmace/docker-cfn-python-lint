FROM python:3.13.0@sha256:e1b0f7dd93fcc8e34d15379c4e487cb69bf6e93088f0f8b24ef0d5137d7974cc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
