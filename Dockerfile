FROM python:3.14.5-slim@sha256:af79f947dee1c929919b0488d20db7200d8737e00f68ee4abeef1fcf1fe05939

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
