FROM python:3@sha256:e7f604a64a07782cb765a619cb5d8dd9613002a7f10db44ae12aaefea1d1667a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
