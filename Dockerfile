FROM python:3.11.0@sha256:b5ff0c777972b45f9800d7410ff6d833c29f2b87924a921e6fd3992a8e79c3c9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
