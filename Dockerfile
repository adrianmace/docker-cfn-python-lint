FROM python:3.12.1@sha256:9c77c6449d6a82955a2fe90abddd3d946cd128e96bf793b59e84703bd72bca33

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
