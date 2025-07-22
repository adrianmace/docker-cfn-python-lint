FROM python:3.13.5@sha256:30bd46f8647a438f95956c58a9e47ae8ef553680dfa54a02b1a9a7823a9e05a9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
