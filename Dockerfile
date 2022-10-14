FROM python:3.10.8@sha256:07954b3474d37287cfea283d501b68346766ab1adcd0f3e9be06cd9323f490d6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
