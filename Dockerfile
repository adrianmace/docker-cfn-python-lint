FROM python:3@sha256:abd051bd603dad02976cb20f2a2a63f3b2343eec194ff0a615d777a9390baca7

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
