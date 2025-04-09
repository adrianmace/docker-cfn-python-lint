FROM python:3.13.3@sha256:9819e5616923079cc16af4a93d4be92c0c487c6e02fd9027220381f3e125d64a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
