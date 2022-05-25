FROM python:3@sha256:865f24f7aeb921c8a93edfaec4ae050565adaf132a996cb1a9ed9344be533fa7

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
