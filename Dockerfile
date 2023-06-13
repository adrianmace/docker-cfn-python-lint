FROM python:3.11.4@sha256:6e13f34e6f3fe87867024474a58d41f6b8aa1c61444374bf17948cf16e481b18

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
