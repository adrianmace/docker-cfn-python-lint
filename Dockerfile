FROM python:3.10.6@sha256:32f9c13bb616f5ca18dc961d4837b1ec6868b9eea88bdf8fb770d2643d9fe257

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
