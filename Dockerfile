FROM python:3@sha256:31a73e707f2f915a8ce41b8fbf32d730701f36ede06d300df6ac222f960ed64f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
