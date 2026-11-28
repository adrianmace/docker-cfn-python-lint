FROM python:3.15.2-slim@sha256:08a4c22c92b79ec821a7ad49768480039ee5b7accac3955228e75366e30abc8e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
