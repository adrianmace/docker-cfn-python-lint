FROM python:3.12.1@sha256:5b7eda5bd7cf644e48487f243549ab189bea271de2442337a73429cb4dce12a5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
