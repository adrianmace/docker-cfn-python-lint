FROM python:3@sha256:eaff9752de41a2597127c837c29282ad0c2ce94c1ba181dc491f5fb65ba7794a

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
