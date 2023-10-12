FROM python:3.12.0@sha256:e2d7d517aa027ab19b99876e228253734f063531f45728baaa751e48d2692f16

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
