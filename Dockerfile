FROM python:3@sha256:eff6334956df0fa4bcde970ea40715e304a0f1528994d7d86633818e3f787613

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
