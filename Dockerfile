FROM python:3.12.1@sha256:6d7fa2d5653e1d0eb464a672ded01f973e49e4a7ded59703c7bdcf6b92eac736

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
