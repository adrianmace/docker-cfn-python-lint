FROM python:3@sha256:cb3330ac932036658d79361dfb07ddcee6aaa64288150c05f7ddef544e90f8d8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
