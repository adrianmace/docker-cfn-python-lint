FROM python:3.12.5@sha256:2d28eea1bbbb569e787b5568184ba89d90a372a970af8f142cff6869b2ab78d5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
