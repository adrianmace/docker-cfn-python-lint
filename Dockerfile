FROM python:3.12.1@sha256:7e082bf2ab924afce07aef447111cea2e87c50778ca7b5d7cfbf09692c7e3269

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
