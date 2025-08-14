FROM python:3.13.6@sha256:a66f18ee22c568a3d45191dfd70bdea2e1bd8d303f982ea1bca276a065285a21

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
