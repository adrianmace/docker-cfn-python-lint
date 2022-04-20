FROM python:3@sha256:5913bff61a384ed253da2ffce2df4ba119ef02d32d6abe5ec54550f7de0aba55

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
