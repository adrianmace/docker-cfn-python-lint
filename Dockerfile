FROM python:3.14.8-slim@sha256:3353bb7e9ae99c7cce6cad2b2f2b174e8f22813ac43e3b13e7a742627d2b01d8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
