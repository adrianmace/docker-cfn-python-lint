FROM python:3.12.1@sha256:38a10c1b772519a6ff1679027262788e83010e2f426db4f2291df1288453b922

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
