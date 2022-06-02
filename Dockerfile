FROM python:3@sha256:977d46af711ff8a690000b151d82d2a1a937f51af0294a167c8d17add39a5f87

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
