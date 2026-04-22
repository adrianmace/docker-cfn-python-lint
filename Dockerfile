FROM python:3.14.4@sha256:cb818c8fc1bcad9a209991dc8cb92087280ac0290047ba8e46a7be0d3711b447

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
