FROM python:3.13.0@sha256:6e69956a00ebaeb100c02c349eb02848713573e5a94039ca0d1f88ec37a07505

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
