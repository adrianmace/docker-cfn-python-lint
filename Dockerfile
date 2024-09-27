FROM python:3.12.6@sha256:1c52e8af593a52505b998894feaec2fdf1ec0b378b8d4d3a85ea920f02adf18d

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
