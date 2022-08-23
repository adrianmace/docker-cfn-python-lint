FROM python:3.10.6@sha256:c4f02d9dcc193a5a0717958fab052742b1dce235546010fa217b8b2fbea01b7e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
