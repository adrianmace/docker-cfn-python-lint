FROM python:3.13.3@sha256:f3210a082bd093de885875de43a3338f4089860806d78a74de7ed4e58d12630c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
