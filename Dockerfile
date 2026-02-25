FROM python:3.14.3@sha256:b370b01487e7e82d0ef36bad3da30fc66f3466444b9157f28bb4fec6b5023d4b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
