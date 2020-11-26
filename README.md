<h1 align="center">
  <br>
  <a href="http://github.com/tunein/monitoring"><img src="./assets/opsgenie1.png" alt="monitoring" width="200px" /></a><a href="http://github.com/tunein/monitoring"><img src="./assets/terraform.png" alt="monitoring" width="200px" /></a>>
  <br>
  Monitoring
  <br>
</h1>

<h4 align="center">Monitoring Infrastructure 🔍 📈</h4>

<p align="center">
  <a href="#introduction">Introduction</a> •
  <a href="#install">Install</a> •
  <a href="#how-to-use">How To Use</a>
</p>

## 👋 Introduction

Some description

## ⚡️ Getting Started

`tf.sh` is a light wrapper around terraform which executes the terraform binary within the desired directory. In this case `deploy/environments/operations`, passing the remaining arguments directly to terraform.

```bash
./hack/tf.sh deploy/environments/operations init
```

### Prerequisites

When running the `tf.sh` script, you may run into some errors that occur and we'll describe some of the things you should probably have set up before diving in.

We recommend using [ASDF-VM](https://asdf-vm.com/#/core-manage-asdf?id=install)

You'll need the following plugins:

```bash
asdf plugin add go-jsonnet https://gitlab.com/craigfurman/asdf-go-jsonnet.git
asdf plugin add jb https://github.com/beardix/asdf-jb.git
asdf plugin add terraform
```

Install all of the neccessary versions of these binaries with:

```bash
asdf install
```

You'll also need Bash 5. If you're on a Mac, you can run:

```bash
brew install bash
```
> Make sure to restart your terminal after running this command.

The New Relic-Terraform provider needs the following environment variable `NEW_RELIC_API_KEY` for security purposes. Here is a code snippet for securely defining that variable in your terminal:

```bash
read -s NEW_RELIC_API_KEY
export NEW_RELIC_API_KEY 
```

## 📖 How To Use

You can find more information in [the docs 📖](./docs)!

## 🚀 Development

Some more information on writing code in this repo

## Resources

- Add link to Zoom tutorial on setting this up.
- Add examples of New Relic templates