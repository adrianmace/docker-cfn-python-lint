FROM python:3.11.3@sha256:8f56b97d2956942705a6f9b2bb19d6097f6ed8dd82d071de99ffc7119894701a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
