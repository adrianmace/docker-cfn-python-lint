FROM python:3.11.4@sha256:107f618c565a1a924550c54a995f7321c146c42e05b7e4bf0d9b607c4c922b5b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
