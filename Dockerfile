FROM python:3.10.5@sha256:4118b6e43ea8ae14a499ecce07c0a987af8da1e7c153c4c2e26ceba4b64be7c5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
