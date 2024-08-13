FROM python:3.12.5@sha256:979e5a85461128a7f9769fd8083c59bd94601186893652e7789802d5df6b1aa5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
