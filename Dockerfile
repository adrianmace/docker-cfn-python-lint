FROM python:3.14.0@sha256:5b95b240f2db781f34a5da81e6e2301378495b3ab78d689df325c937be267e1c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
