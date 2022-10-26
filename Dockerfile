FROM python:3.11.0@sha256:fc809ada71c087cec7e2d2244bcb9fba137638978a669f2aaf6267db43e89fdf

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
