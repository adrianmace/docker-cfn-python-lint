FROM python:3.14.0@sha256:6942ebef735aad5f708ef9c5e750cbe37dbc7751cee35c140e33764e34843ab9

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
