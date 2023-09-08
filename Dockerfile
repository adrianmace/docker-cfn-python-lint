FROM python:3.11.5@sha256:8488a4b1a393b0b2cb479a2da0a0d11cf816a77c0f9278205015148adadf9edf

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
