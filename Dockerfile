FROM python:3.12.6@sha256:79969aedd078863e55b32e908f3d94ac78ec9667e3b3b3b7070aeac27209382f

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
