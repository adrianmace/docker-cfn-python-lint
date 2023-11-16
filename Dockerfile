FROM python:3.12.0@sha256:89f4c413ac0f36072211bced42ff7e8870cf5347c3cde4b84a67b5f87911b9a3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
