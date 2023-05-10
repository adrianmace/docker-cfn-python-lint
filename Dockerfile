FROM python:3.11.3@sha256:b9683fa80e22970150741c974f45bf1d25856bd76443ea561df4e6fc00c2bc17

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
