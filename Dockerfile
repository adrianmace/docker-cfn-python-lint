FROM python:3.11.4@sha256:e7b98cbd26cbc371e0fdb039f92bb95d566b58296a26ada0fe88b3e24991fcf4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
