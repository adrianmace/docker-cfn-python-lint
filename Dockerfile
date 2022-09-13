FROM python:3.10.7@sha256:6cb903577cfb8b0cad258a772bcd8d8c557e70854a69558171070a18198dff4f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
