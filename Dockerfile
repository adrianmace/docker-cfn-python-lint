FROM python:3.13.5@sha256:0aafd87e2438b9db15ffc16e86eed18224c5bc10ab71671f379cae240f3c044e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
