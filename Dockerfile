FROM python:3@sha256:48d2ed838ff2f27066f550cdb2887f9f601af8921a72e1f0366c37a0ee4e5d3a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
