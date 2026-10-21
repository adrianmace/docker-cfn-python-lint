FROM python:3.14.8-slim@sha256:29e1fe7a54021a1d8990f59223f1246a4239b106895363680b23aa1265f73cb3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
