FROM python:3.10.5@sha256:068d3f902c3d3c3fd4b020dbe111f1c48165a8108b3e613b50c1b4a2c620c4df

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
