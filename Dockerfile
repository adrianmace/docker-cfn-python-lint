FROM python:3@sha256:6af2ace99b02ebffab3406e18c489bb59c64b6789b98d696a26e83087bd7ced3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
