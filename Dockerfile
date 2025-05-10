FROM python:3.13.3@sha256:3abe339a3bc81ffabcecf9393445594124de6420b3cfddf248c52b1115218f04

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
