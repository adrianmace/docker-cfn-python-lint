FROM python:3.11.4@sha256:b7a504dd0affeb20cf1ba1d3219f854c889c7ad557a2a5a4c4aba19cadd075f1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
