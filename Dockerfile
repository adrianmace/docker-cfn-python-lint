FROM python:3.10.6@sha256:b0947aebfb836235e67ba5ff43ff6b0f20eb6da893cc6d85a8f3e6bab1aeb9fc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
