FROM python:3.10.5@sha256:95e12432e23d2116270e70e30805a057fcde85ef0fa6e6532f809478f616ace4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
