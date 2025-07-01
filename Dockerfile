FROM python:3.13.5@sha256:9a4c72e547e3e21c5325a53289a52a21cd6f737358b2f83035c860647547051b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
