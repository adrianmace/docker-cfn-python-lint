FROM python:3.12.4@sha256:f6d04873f0a67146854270e5f6513ed5e0165557c1b10689f1a20e9e65c8fe8e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
