FROM python:3.11.4@sha256:66ff9492865ab2ff982bd2d8ef8edbb16a35753916d3b2b5df2c54deffdf682a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
