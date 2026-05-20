FROM python:3.14.5-slim@sha256:a24bfbc0bd39cfa24de47147ada92b65916ad693e6ab5034636ef21f5663ef13

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
