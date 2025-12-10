FROM python:3.14.2@sha256:2bf18f695b5d2077340609c72d3629946cb681b81bdc453b589d91a85a315138

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
