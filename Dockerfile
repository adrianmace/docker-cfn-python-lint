FROM python:3.12.4@sha256:e8be0ea148390d08bc077840cf87ac6a538d80b0ea1e8752b3e3982987cd0a53

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
