FROM python:3.13.13-slim@sha256:6f8a543598e40391683c7c80552f4a97759c7fecf23f048ba95147f40d676755

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
