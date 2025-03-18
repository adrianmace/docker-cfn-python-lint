FROM python:3.13.2@sha256:d392a962e9433ffa96f401a9b2f4387ed4f2d4058d94fe7358661abfdfbd1f5b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
