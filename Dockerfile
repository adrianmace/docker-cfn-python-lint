FROM python:3@sha256:555f5affd32250ca74758b297f262fa8f421eb0102877596b48c0b8b464606ea

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
