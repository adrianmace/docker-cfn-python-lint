FROM python:3.12.2@sha256:19973e1796237522ed1fcc1357c766770b47dc15854eafdda055b65953fe5ec1

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
