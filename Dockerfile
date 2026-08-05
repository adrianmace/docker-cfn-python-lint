FROM python:3.14.7-slim@sha256:66cb9041a9e6dffe5d2043e8032f5403f66e22db70cb7023b83d61a9cc104c80

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
