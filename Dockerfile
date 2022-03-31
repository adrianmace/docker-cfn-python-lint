FROM python:3@sha256:7d165a03bfd7439f6e2d3236ecfd87eebd92648eb333cc80f0e23edfed27cfac

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
