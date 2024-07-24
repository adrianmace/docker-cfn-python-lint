FROM python:3.12.4@sha256:2080735559b825ad4c303be9d28fdc20befdea6bf8b16023fb0121f8525f583e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
