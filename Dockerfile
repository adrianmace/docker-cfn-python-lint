FROM python:3.12.2@sha256:05cdd4b3b9d3eba7d41450beae8dd5015e4465adb3d80278b237fe79b7efd30c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
