FROM python:3.12.0@sha256:ae872083911777928d661bd4b2a21fe0368c3ec9347e4e512f9252ce2224bb5d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
