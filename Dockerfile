FROM python:3.13.2@sha256:21f561b42ab3d1e10002a9fdd9cbf9ce27f257650cf31547531d1bb728aedc9e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
