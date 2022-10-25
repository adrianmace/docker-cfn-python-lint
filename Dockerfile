FROM python:3.11.0@sha256:fd3ede32979dc14e2d2c93925634b6cc2d01f69fea04d8ea39b49f21f33e623f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
