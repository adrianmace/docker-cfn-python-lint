FROM python:3.11.4@sha256:4fab2c8eef4b8e501f5637984b0c5cec35e03e79a9580f77712c715dbb5c44f2

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
