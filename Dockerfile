FROM python:3.12.4@sha256:ad26bf20080f6b43a7f10020201fb95a678445be9040c111e034d86dc0c80d71

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
