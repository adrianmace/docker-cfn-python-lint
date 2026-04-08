FROM python:3.14.4@sha256:1999aefa820cccbac67db0d476f15ae5e9d8b9a50f55179dd7211678b54ded9f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
