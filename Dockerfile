FROM python:3-alpine

RUN pip install --no-cache-dir cfn-lint==0.58.4

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
