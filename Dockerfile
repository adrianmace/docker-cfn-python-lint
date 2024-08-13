FROM python:3.12.5@sha256:7e6591e7c40d1450ccc8a22f4a7f20c6aaa14e5fcab1d0b8b364d936f7b2b8e5

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
