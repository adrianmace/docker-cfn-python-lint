FROM python:3.10.6@sha256:05549788b9abed37b909022a56e5be20835eee5048607e75138190ecd72023ed

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
