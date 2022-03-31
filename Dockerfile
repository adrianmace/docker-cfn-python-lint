FROM python:3@sha256:ee6baa56041f3571eeecbc3b99f48cf2f39aabcebbad98446ab5d6e4011bc227

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
