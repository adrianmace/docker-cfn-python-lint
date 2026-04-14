FROM python:3.14.4@sha256:4206d2543bf5655a27331951d4d2e91bf34a72bc1eb398fb6366d8b7187bf87e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
