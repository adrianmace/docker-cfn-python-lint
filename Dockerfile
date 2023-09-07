FROM python:3.11.5@sha256:e73c486856ff002ec13961c05dab8f6ff1688922895b574647a695bfc163e52f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
