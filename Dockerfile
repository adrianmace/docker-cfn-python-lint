FROM python:3.11.5@sha256:cc7372fe4746ca323f18c6bd0d45dadf22d192756abc5f73e39f9c7f10cba5aa

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
