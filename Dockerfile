FROM python:3.14.2@sha256:83dcedf0d8bfa053bb5cf2c0b0def192b6f4ccbf302a0b0e44ee146ca0d94fc7

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
