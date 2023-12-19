FROM python:3.12.1@sha256:6f13c164d44819b53966dbaa58897774fc50bf7fd035b763a6519624117fdf97

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
