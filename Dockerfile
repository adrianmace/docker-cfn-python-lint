FROM python:3.13.2@sha256:8c55c44b9e81d537f8404d0000b7331863d134db87c1385dd0ec7fefff656495

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
