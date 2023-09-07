FROM python:3.11.5@sha256:ffe8801e5cb9b5f012102db80c6edce1a2225188f0900fc110699998993b2851

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
