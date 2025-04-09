FROM python:3.13.3@sha256:1f7ef1e8f35bc8629b05f4df943175f2851ba05f4a509f72304ebffde78178ee

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
