FROM python:3.12.5@sha256:e3d5b6f95ce66923b5e48a06ee5755abb097de96a8617c3f2f7d431d48e63d35

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
