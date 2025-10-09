FROM python:3.14.0@sha256:5f3ca57e8d3d5deee7606c1a2891eff5da2dc8fa71168f9471e955c6e79564eb

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
