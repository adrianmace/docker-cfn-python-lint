FROM python:3.14.2@sha256:52794854b26e18a67c9cde61b8137e95851772e5cf7460540063074253450dac

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
