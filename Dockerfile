FROM python:3.11.4@sha256:0b9f9c0b27bea995c039a8e30ccad6715c3c492b6f71aa1e157aa540216af6af

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
