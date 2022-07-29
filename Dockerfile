FROM python:3.10.5@sha256:de6743c4dfcc74b11fc7c2ff3df3f5bcd42010d1b3beed021436f5f987767f19

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
