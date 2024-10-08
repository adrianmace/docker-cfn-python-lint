FROM python:3.13.0@sha256:4f3780acb8d126492a8890a1e1715d36773c0cc1865b5aa569ba857548d0f51f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
