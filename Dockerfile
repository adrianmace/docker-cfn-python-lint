FROM python:3.10.7@sha256:0f37bf5d7dafcfc4036086f2f2973aa74c48f6831de99743eb5f678ba92283b2

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
