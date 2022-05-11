FROM python:3@sha256:e43bb26dd8bd8edc4815e427c417d6fe10580cf223025ff199e46acedda9ae52

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
