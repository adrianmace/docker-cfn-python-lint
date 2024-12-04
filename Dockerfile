FROM python:3.13.0@sha256:7861d60e586c47e7624286e4e78b086a936fb5284d47fe5e5c5068a9ddac6fb1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
