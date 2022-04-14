FROM python:3@sha256:bb5cbc870831d7d5973f7bbaa07466a20d3fcf91f5ae350a25f7cec2b439b91d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
