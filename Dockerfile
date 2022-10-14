FROM python:3.10.8@sha256:b74a55c215ea71d8b208fd0692f0f557faef2d47b923fba3f38b85ced0b2829e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
