FROM python:3.12.5@sha256:29e0ed4d7724b123e55f6e95b5ab03226843848386fbc4ba590a3918beb2981e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
