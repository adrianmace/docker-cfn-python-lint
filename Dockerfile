FROM python:3.13.13-slim@sha256:582aeb9b4ad0905666cb891e4bd5f28cb5577c2117a58c7ba9fd44dd0172a9f1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
