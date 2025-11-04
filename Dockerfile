FROM python:3.14.0@sha256:7960a76b45493e8a3b87a0365e257c547b66e8d0c8cd629c029aec9c9e31ed5e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
