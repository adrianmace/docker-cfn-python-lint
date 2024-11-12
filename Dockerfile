FROM python:3.13.0@sha256:5b5dd1a0950084ef399eae9ec6210b30a7f1b5389c95aa3f64759fba4d2b3a24

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
