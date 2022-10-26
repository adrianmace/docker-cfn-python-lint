FROM python:3.11.0@sha256:105d77e7d7ae7f03112b72880f5b630b4d3b39e59f1a2a8cabb021c737128818

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
