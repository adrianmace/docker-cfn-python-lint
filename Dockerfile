FROM python:3.11.4@sha256:3175725c06e463f1fa52bed164dd951e971b788c264f999fbda94e6800332909

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
