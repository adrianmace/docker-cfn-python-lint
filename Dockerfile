FROM python:3.10.6@sha256:e0b0b5400b994955dae79e9302d1f3ef34df98bbcb56622bd1baeb50568c03d8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
