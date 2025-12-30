FROM python:3.14.2@sha256:8797f8e6ceecf9c51a344452dca41422ddff9b9c17422f99c41620a3751c7e35

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
