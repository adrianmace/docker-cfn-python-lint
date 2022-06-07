FROM python:3@sha256:3a53bec52f7a7c3623da97269109d8009f2b76c49c884100c58b0642345dc049

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
