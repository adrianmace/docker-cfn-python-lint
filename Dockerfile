FROM python:3.14.2@sha256:5ada2b3e9586c924a8c81d6a35e6016f4fc261429dbd7e5c6ae724431003dcee

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
