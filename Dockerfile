FROM python:3.11.4@sha256:dd8f907002d58792de192bdc0701a1787620750777896a704407a97f4ce4558b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
