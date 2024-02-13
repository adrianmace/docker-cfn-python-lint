FROM python:3.12.2@sha256:a461539b262bcec490d5c7dc0af7b90f204a1851d6d94fcdbb7fad7bd8b9aef6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
