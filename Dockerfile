FROM python:3@sha256:85f504ba9cad91a636b58fdec377eb4b69ed4f6ca593a6a7ebf84617f39bad49

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
