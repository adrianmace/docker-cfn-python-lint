FROM python:3.13.7@sha256:74503e0bff6cf811f029590a05e0218cc9ba3e099a4b7df0ab84a67df081e1bc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
