FROM python:3.12.4@sha256:4acfe63820e9ff9d375ec8dc14290206cf92cfbf60d25de3d4682045743bfde2

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
