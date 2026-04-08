FROM python:3.14.3@sha256:9234c2fd80143741d28153f66dc306f0448c477a7d965df83107373411509357

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
