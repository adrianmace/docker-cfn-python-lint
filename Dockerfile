FROM python:3.12.0@sha256:ddd43bb91ee515163e4cedceb62485f96182d3322d86f01dec4e4d7a170ddd0e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
