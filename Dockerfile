FROM python:3.12.6@sha256:fcad5ffb670a9f1edc5cc232b2b321e617aaaae1a22c54242964178e408e0057

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
