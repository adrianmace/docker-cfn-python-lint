FROM python:3.10.7@sha256:7d6892dc8001a9c0ce2201f9c028b9b6012c7fccf5f8c5d17883b3aafeb799db

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
