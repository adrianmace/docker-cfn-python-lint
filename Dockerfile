FROM python:3.11.4@sha256:385990eda65578a384e44cbdccc78104be194412686b6b2af47e319bdeef0405

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
