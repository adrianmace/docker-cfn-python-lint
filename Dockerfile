FROM python:3.10.7@sha256:53e577204d362233ee92aeb5119449271f5eb24f99c61464efe9167ddbc8640f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
