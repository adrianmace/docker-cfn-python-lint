FROM python:3.12.6@sha256:d7ac8f39c29ac27c2ae9ad6353b0ccc227c3c90064756cdf1a1887fb86740612

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
