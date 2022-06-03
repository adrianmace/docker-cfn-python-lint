FROM python:3@sha256:cddebe04ec7846e28870cf8624b46313a22e6407b51ced3776588784caa12d27

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
