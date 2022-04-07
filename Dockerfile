FROM python:3@sha256:e62080ef4eb8412ac5da09c9599d198e81f4bfc62e843d96470eea277c5e2148

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
