FROM python:3.10.7@sha256:fc1317aa13ce8f97e513dc55dff468ab98a806e8b21d61d1e1e3460ebb334278

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
