FROM python:3.11.0@sha256:55101c8373de5311b0ece8746251882ddb0bb394588c93d2477b88852ad00e72

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
