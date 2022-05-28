FROM python:3@sha256:1500fd968f454b7a16c70e891f5bb3e3a2362b56bf38de22b41ff11f9eaafcf8

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
