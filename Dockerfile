FROM python:3-alpine

RUN pip install --no-cache-dir cfn-lint==0.58.1

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
