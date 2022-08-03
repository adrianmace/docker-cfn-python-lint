FROM python:3.10.6@sha256:b95469f0bbd1ea07aefd6f9e98614f289efe25bfdcc988bc2619a3162cc02b2a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
