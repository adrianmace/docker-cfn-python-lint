FROM python:3.13.0@sha256:7cbaafdb2751702bbca474e69bd518c5504c4f34d6cd1c9e6f2e8d3072a582df

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
