FROM python:3.13.0@sha256:dff4c06297debf938cedbfdf7c1a2acf3a1a3f54c31adeba681b627962e17f21

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
