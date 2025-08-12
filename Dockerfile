FROM python:3.13.6@sha256:92c10ac1cb14d85108fdf83f69c4daeddbcfc6ada628564475495f2d788240dc

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
