FROM python:3.12.4@sha256:fce9bc7648ef917a5ab67176cf1c7eb41b110452e259736144bc22f32f3aa622

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
