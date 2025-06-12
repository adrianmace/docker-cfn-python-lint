FROM python:3.13.4@sha256:93b9769eb30d8ac0351c4a26b7c41f739c2de6917910eddc7e4d94834a7beb99

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
