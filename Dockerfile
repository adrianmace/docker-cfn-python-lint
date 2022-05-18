FROM python:3@sha256:d9a8bd75e68ac55d665ecae75a5f5772ad2434a90692d961333a72699aa5fd45

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
