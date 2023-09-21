FROM python:3.11.5@sha256:caebbb358d9511291d6082b3d219777079af5974165b4d9be70299f6618165f6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
