FROM python:3.11.4@sha256:939f996e0f794d7fb3183e5f0d6b7af79ae5b87d4297adabb890a689be4e7eb5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
