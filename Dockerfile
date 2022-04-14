FROM python:3@sha256:c871acd563054771f91961cd55841691d8d10fb11658ffed0166f220d8dcfe22

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
