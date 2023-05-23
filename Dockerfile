FROM python:3.11.3@sha256:6b8d0fbaf8b4e8fc56864ccc4d496ea0cd2abff6526e3f7f8ab171d696a05b69

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
