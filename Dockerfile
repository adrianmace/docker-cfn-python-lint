FROM python:3.12.1@sha256:ffe64c4c9090cad4c22bc7362585612878957bc3ef36f5fdc1ef0ae5f5a357b4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
