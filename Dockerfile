FROM python:3.13.5@sha256:5f69d22a88dd4cc4ee1576def19aef48c8faa1b566054c44291183831cbad13b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
