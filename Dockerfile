FROM python:3.10.8@sha256:777af27839f7cab82110e21eeefcf87f4545cf3c8e75880e8d4d86f71285b6d6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
