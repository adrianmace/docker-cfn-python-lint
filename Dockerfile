FROM python:3.12.2@sha256:5eda1a3e78a90e7542c221cf525233f4b958a5778e61bcc350cc1e0d2bcf7ecf

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
