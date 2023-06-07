FROM python:3.11.4@sha256:98e72c03b3aab3f7c39031be69b25401d8954b52449865fe42a2ff175634e01b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
