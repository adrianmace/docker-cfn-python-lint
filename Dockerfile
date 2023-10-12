FROM python:3.12.0@sha256:5624c7648b31ecd8b03eef4b0805f3ecd8b9703a7caf2480c0d3beb2a09968b4

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
