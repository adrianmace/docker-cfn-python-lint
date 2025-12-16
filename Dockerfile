FROM python:3.14.2@sha256:492b292a9449d096aefe5b1399cc64de53359845754da3e4d2539402013c826b

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
