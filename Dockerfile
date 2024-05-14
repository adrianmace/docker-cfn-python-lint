FROM python:3.12.3@sha256:ba21ce5ceafe657e2ec622044d2b636c7ba383b51d79591079cc5485ec51ec17

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
