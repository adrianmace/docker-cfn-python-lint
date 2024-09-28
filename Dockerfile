FROM python:3.12.6@sha256:14f073695854184b65a82808ea2baa352d49c1a86442f06a90d9c236861c7a8f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
