FROM python:3.11.0@sha256:2726e4dc452dec4c7232d821ec572e500b0049a346784d6c6175c063c1b47671

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
