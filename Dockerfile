FROM python:3.11.4@sha256:44729cbb05832da5c0c1c6481814e71e20731933a32b3401ee510f79e8185d4b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
