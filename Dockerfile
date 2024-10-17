FROM python:3.13.0@sha256:db831623299f8eaef6c8bcb8f0f356fd8384bd0db13c28ff671c3cf562a58db7

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
