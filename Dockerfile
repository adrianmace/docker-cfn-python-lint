FROM python:3.10.7@sha256:5d7329e07ecd9cf1699ec71105a32a0609438361d6cb251d50c9cbbabd09e5ea

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
