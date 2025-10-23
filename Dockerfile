FROM python:3.14.0@sha256:671d8548cfc6ec789cbdd74c8585bd614864d1005970167350a2586be8db5650

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
