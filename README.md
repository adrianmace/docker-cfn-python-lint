# docker-cfn-python-lint
Docker image of [aws-cloudformation/cfn-lint](https://github.com/aws-cloudformation/cfn-lint) with automated builds.

![Build Status](https://github.com/adrianmace/docker-cfn-python-lint/actions/workflows/build.yml/badge.svg)  
![Build Status](https://github.com/adrianmace/docker-cfn-python-lint/actions/workflows/deploy.yml/badge.svg)


# usage

lint template.yaml:

```bash:
docker run --rm -v $PWD:/data ghcr.io/adrianmace/docker-cfn-python-lint:latest /data/template.yaml
```
