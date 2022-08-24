FROM python:3.10.6@sha256:834a1ffe5754ac82e2c618d0d497b3757767153601790ffe7f8f41ed07f5753c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
