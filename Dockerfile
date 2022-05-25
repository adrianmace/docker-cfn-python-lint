FROM python:3@sha256:c2316fedc3ce773495e66c59ebf831aaa36b0677c1137e330c192275d618802f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
