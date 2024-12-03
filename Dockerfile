FROM python:3.13.0@sha256:2d9f338cf7598aae8110f4eef1f3a6d2f8342d0c0b820879b2d79838edf6f565

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
