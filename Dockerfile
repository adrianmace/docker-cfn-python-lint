FROM python:3.13.0@sha256:6cacef58b4bb19b78f2d00860d145d20ed1b1184125f5d405733b8d32f55d5ba

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
