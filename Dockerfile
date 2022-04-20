FROM python:3@sha256:e8cc701741e6828072494598e2895d7c185505f27778e3cd85628927669d25cd

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
