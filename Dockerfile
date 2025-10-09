FROM python:3.14.0@sha256:2c25a316ddb08d471d24f6529b12e2b28c40c3ff63b9a397e659418ae93adb64

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
