FROM python:3@sha256:cba05a7fa8833da69bf7a92ca87f7737a9f85872ec81f4de43f0373de1a4a664

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
