FROM python:3.14.2@sha256:5fdc8ebf11011d0ba678ed64dd4f562f76b998ddea07568dcf1a03ac9f941ce3

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
