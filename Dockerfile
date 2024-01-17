FROM python:3.12.1@sha256:6f4b96ba7d04bf04f8d004723cb81231ff05feeef2b0fd0a2d604d10b13f758d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
