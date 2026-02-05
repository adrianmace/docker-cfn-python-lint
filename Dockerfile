FROM python:3.14.3@sha256:8c25c3155557bebc62c6215192cbeddf9c5dbd8f25af9ce9dc33979e39c4ed37

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
