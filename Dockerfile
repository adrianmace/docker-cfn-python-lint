FROM python:3.12.4@sha256:b40b4e5c86136e5400e9347459a9366315ff129e07175fdde8e221147ec5d541

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
