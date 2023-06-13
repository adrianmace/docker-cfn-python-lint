FROM python:3.11.4@sha256:d8ce9cab9edc4cb7c76671fc3d1a2e8ff090944b7d742b04ab494e45040277e1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
