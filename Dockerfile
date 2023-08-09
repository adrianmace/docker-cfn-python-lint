FROM python:3.11.4@sha256:0c19c0c66527cd4350bc7596d6a6a1726637e58e93f38c9b9f3a378e0c9e08c3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
