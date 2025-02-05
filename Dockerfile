FROM python:3.13.1@sha256:7be9b757ea8fa90b43efd604dd5ef2923364230f00564b2ea7f0982d24b374c9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
