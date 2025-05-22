FROM python:3.13.3@sha256:e3424acce37cdb1d7f885b2d13c14a550a0b6b96ff8a58d2a08883f3f865fd1e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
