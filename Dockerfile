FROM python:3.13.3@sha256:721b56139b0c6f8512286bd0d3d2edefe34dffc7ab488fc8aa39ed129e0ad6b5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
