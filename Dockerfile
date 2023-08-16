FROM python:3.11.4@sha256:8ee00e018f5359049517634814f7d322c2ec3b9581d20ac2c3b6db27d8f22964

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
