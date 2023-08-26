FROM python:3.11.5@sha256:07921da11e658fea49704e66b4aa04fe8d6cf7b5b53e5fb7efa3fad5b4edb040

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
