FROM python:3.12.4@sha256:c64795dce5347ac23ba30626dd397e1a82c14f7679b4c205a914e767334ea024

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
