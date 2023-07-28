FROM python:3.11.4@sha256:90e37595bd787fae365db9155bcdadd5de54ae646d373f7f01cc64583e15f4ea

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
