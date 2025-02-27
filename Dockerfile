FROM python:3.13.2@sha256:aeab3b605cd19f4c6ded578d76ad5faebcb78d21aed529c51ee97c5bb7f71778

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
