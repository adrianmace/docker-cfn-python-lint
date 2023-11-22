FROM python:3.12.0@sha256:c7235b5c21bdb442572d56056c7e7a3fb438773c5fed45fff2126246bd58d0b9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
