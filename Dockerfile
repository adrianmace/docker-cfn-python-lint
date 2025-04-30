FROM python:3.13.3@sha256:884da97271696864c2eca77c6362b1c501196d6377115c81bb9dd8d538033ec3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
