FROM python:3.10.6@sha256:615cacf9b4522ef78244e890d3c1afa9fcb81002ec62fcf259400992d816e07a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
