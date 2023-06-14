FROM python:3.11.4@sha256:6f5b58fce5af71fef2578825e4030054981f8dae74de166df2185c6580ca7e13

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
