FROM python:3.12.2@sha256:297f94920168234f8a5dc4d6a47bb44685543b9f8098b00f0c5115dae09b5986

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
