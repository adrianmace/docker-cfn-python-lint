FROM python:3.12.3@sha256:9e972ea6be3b624a3b33d2e5011e08de899c0c71fe490a910dd3ed8d65924758

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
