FROM python:3.13.1@sha256:eb3308cf8d142c04248f0e13b6214a29c6b62e3a86aee66ca9f1109f6be550b6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
