FROM python:3@sha256:247105bbbe7f7afc7c12ac893be65b5a32951c1d0276392dc2bf09861ba288a6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
