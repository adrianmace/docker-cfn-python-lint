FROM python:3.12.5@sha256:e94382c058b2e432e702c3f39b51a93be68611e5326b813fa790527944317c6a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
