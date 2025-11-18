FROM python:3.14.0@sha256:29f6dd673b2788db9eef6bb8896ee6cec7b4506a63fe4a90a9258d3b82221a2a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
