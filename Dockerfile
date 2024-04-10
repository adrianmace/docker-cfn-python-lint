FROM python:3.12.3@sha256:21cb633a0032b2f11d67acafda8fe20c609bb8bab28342482c4c210f7352fc96

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
