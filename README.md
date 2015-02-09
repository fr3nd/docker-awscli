# awscli docker image

## Description

The AWS Command Line Interface (CLI) is a unified tool to manage your AWS
services

This image allows you to run awscli in a completelly containerized environment

## How to use this image

Run awscli help

```
docker run \
  fr3nd/awscli
```

Run awscli "ec2 describe-instances" with current aws credentials file:
```
docker run \
  --rm \
  -v ~/.aws:/root/.aws \
  fr3nd/awscli \
  ec2 describe-instances
```

## FAQ

### Why to containerize such a simple application?

Having an up to date awscli requires to install many python dependencies in the
base system or use virtualenvs. While a virtualenv would be a good approach to
install the tool without messing with the operating system python packages,
this allows you to run it in a completelly isolated environment
