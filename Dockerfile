FROM python:3.11.4@sha256:5331225f25c28a47e58b2a16cd2b8329f427665464c469bf70df50192fdcdac1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
