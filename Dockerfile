FROM python:3.12.1@sha256:a3f4a3fabc97d4a5a40f869e3a7b6f4db943afeb16ece034533dd6cf733c4c76

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
