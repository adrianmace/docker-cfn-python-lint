FROM python:3.12.4@sha256:6ba67a1d70d8aed5e1998401430e276445b9779c9787659ec024e33312b19b48

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
