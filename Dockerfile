FROM python:3.10.6@sha256:3c1510f9bd4a5a53e85828e421b7532ff4ef98068fa581cbd28ee7e400e72ddd

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
