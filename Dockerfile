FROM python:3.10.7@sha256:fe068d8c06a719e26a1388c9d5c7c67d94923b0654ba89b0b7b5e518609e3304

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
