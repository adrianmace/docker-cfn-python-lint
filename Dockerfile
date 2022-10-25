FROM python:3.11.0@sha256:24fc5cb8f5eb252bc03dad09cb9ebf59ebbe87d0348bd090e7e91e567c7d1522

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
