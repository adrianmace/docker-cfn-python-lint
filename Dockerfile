FROM python:3.12.1@sha256:cd1b937bab75f47dc4e1d24d0dfdb21e5b9e2a8b73736e9a6150d2780b1f850e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
