FROM python:3.13.2@sha256:74ac94c0d40f2c112e443252864a1e40a6db06e77bb6e805b638204233ffc56e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
