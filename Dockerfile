FROM python:3.12.0@sha256:4520419471fd561a39e4ad7c38243bd7991f551429d14d30a8d421f3877bd125

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
