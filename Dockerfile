FROM python:3.12.5@sha256:b7552a9f6cb77632e9ec6f714ed9846fb43bd32d17a7ad82bccac88f5e2cd333

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
