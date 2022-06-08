FROM python:3@sha256:b7bfea0126f539ba570a01fb595ee84cc4e7dcac971ad83d12c848942fa52cb6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
