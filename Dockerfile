FROM python:3.10.5@sha256:fa63d0066ef9d4a9e32b5871205d7f207fd7131f50bb16648042c97af3830c88

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
