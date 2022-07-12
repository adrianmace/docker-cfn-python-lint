FROM python:3@sha256:4930509e17ff89f887cdfbd46fcb5d7a7d1407c6c5981b36a4c4b45b9c1e1709

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
