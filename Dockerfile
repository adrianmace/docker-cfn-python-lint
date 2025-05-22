FROM python:3.13.3@sha256:3592650a0a8e6709cd4f3359dc7f1665c35bd9da6da34a9f22050aaf4878511f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
