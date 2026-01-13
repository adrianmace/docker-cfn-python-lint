FROM python:3.14.2@sha256:99536892f722b2a8f83c7b3a1e26734e1c183aa914f6cad1d89d9adb68b4dd90

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
