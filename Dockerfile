FROM python:3.12.4@sha256:031148f34a4a6b2c1c30960c977eb292df28179b67142c2eae3701284e6af829

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
