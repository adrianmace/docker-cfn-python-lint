FROM python:3.14.0@sha256:934873f1360893d07afe0d25b99af46640e916a5900f1677fb86e41f73920253

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
