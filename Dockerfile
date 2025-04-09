FROM python:3.13.3@sha256:72ad97d5959f20f5059ba10065fbf41a973303239f77f27e4b4e29f2d5e77edc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
