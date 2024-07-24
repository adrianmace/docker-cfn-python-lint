FROM python:3.12.4@sha256:389f624f2a08a3f26a6bc12e2ff92277388a55410bf367b25cfb7050b01245c1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
