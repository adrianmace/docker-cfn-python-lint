FROM python:3.12.2@sha256:8d49c213d2b2e760edbec28c2c4c4b2d22d0f90c28c863abfc5594fe36feb740

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
