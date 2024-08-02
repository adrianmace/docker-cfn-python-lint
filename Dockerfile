FROM python:3.12.4@sha256:bdc699ec9b18804a42e6ba43896e34df9a31053af0989f9425a6c515a19e3a96

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
