FROM python:3.10.7@sha256:cbee3f15497620367b52b41daa976601c88a62063411ecd81c5855e05cc7df3b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
