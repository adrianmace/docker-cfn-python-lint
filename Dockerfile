FROM python:3.12.3@sha256:019fde9269495bce334f8ee184dda759743a45aa11a76fd41adf0358fe53fc3e

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
