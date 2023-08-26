FROM python:3.11.5@sha256:cabb571d3873a2c1c7d4eb5b0c7773ba9edc186bbb885777ae646f47657df2bf

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
