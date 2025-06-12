FROM python:3.13.4@sha256:b077ca6a99f3e8f96d686bf4c590ed59079b779ef33090db3fb7cf348ba47c6d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
