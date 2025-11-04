FROM python:3.14.0@sha256:a8053dece0fb59fd31e0eb615302e1d3936191655bc8ec74db128107fa415a08

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
