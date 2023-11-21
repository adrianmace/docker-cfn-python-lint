FROM python:3.12.0@sha256:445b79db458229a040537f630ccb334c2ac74e8b53b0fa3f192f09b759ca3378

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
