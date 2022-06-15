FROM python:3@sha256:1f26efc025a4a696ae773ef4084427fe54c2edc2f23a523fbdb73608766403dd

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
