FROM python:3.11.3@sha256:17406cbc3e7ad62ec60a706c6791e78e6a2b44e6054c02e0a31c339926cb4299

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
