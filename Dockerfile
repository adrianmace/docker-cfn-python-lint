FROM python:3.12.4@sha256:b6f142bd70d2219c98c143094ad2a0b8cc882294a7fb2664377a7b68edfc5767

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
