FROM python:3.12.4@sha256:752a537a903ce250e9469a4f39b59ec6d84aa184484b89c752e0b7340104e518

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
