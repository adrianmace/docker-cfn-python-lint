FROM python:3.14.6-slim@sha256:072ffcb57bab690052d9b695592d811a42b849e8ef254ced334a28f283d5f76a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
