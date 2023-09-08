FROM python:3.11.5@sha256:686efecb5c589eebe2e0feba8c163c7b96f08c6cb7fed0abc80b617d01363bb8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
