FROM python:3.13.0@sha256:a6ed02f81e39e498b1d474f0722ff47b6ecaffa1b6432e66749aca14f80f3eb5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
