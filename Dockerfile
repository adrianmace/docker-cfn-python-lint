FROM python:3@sha256:1a82ada3ea143fc7754e6b6e7c2dc04afdc9a7ad86874fa4ccfe5e6a8c27052c

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
