FROM python:3@sha256:3270422a4517a752ce20ebc6009043defe0e5a50b70f6faf0026305aecc2e467

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
