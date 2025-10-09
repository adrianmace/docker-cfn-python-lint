FROM python:3.14.0@sha256:8676e2e7a07b736aeea297a13a42ab7b235940623a7fcd3815c336662ffe33c8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
