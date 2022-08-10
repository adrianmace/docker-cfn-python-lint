FROM python:3.10.6@sha256:7517e835bc65aad07aed20fc7ddba37abc3f707eed6ef2ebb3fdbe26f5f52914

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
