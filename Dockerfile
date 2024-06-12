FROM python:3.12.4@sha256:00389e020fe42a6c74a8f091ce9b28324422d084efdff26eabe93bc4ae9a110b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
