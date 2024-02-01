FROM python:3.12.1@sha256:a3d69b8412f7068fd060ccc7e175825713d5a767e1e14753e75bce6f746c8a7e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
