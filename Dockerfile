FROM python:3.11.4@sha256:ad6149f24084cc4af992bb5c1bf0171cede4f799f7dab23ab0117852ca47989d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
