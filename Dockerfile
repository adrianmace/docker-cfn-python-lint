FROM python:3.12.0@sha256:8250438649e08fb8c741376f1282907119f9fb1e0260dfd4f626e173f41c4249

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
