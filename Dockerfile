FROM python:3.13.6@sha256:1e4584c017d9cecf8a952cfd8f8e47ef5611b28dfc29da9e1d4b6bad98daf9b0

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
