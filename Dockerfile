FROM python:3.11.4@sha256:d6dd2fe57fa8b4e7f5da8e0d9658677dd49ab3181ea49761873b8cef624cea38

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
