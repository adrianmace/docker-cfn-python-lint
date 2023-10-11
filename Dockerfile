FROM python:3.12.0@sha256:ccb032b39f9ca705a99ffa8b64ab141518b0e64dd82c9eda7568e1512eced56f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
