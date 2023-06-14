FROM python:3.11.4@sha256:45a0a776348e06d703d4cab0168bbcd2fb9ef571c23f17fc9eeb87cbe30bc63a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
