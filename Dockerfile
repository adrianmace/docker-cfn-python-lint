FROM python:3.12.6@sha256:e48c5e8b0827f849a2474036f4deef9161fb8760b80ebcee1823539ea7bfa4e9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
