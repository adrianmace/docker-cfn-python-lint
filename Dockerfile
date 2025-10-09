FROM python:3.14.0@sha256:d29cf0828933ed271be9234ca2c2d578c16f2911451418aacc4525ac04ac7114

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
