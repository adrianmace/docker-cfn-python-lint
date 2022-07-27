FROM python:3.10.5@sha256:2f8af0b0adb15605c8015bd9015b1833a517757591cdf0c60604271a7664e8af

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
