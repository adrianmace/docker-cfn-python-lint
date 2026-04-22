FROM python:3.13.13-slim@sha256:9213d136547f0602c3337ff48291e937f9cc43060b3e123402cf2aaff1a08b75

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
