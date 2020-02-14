<div align="center">

 ![toolbox](https://i.imgur.com/6wj0hh6.jpg)

### Toolbox

![Status](https://img.shields.io/badge/status-active-success.svg)
[![GitHub Issues](https://img.shields.io/github/issues/wwmoraes/toolbox.svg)](https://github.com/wwmoraes/toolbox/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/wwmoraes/toolbox.svg)](https://github.com/wwmoraes/toolbox/pulls)
[![License](https://img.shields.io/badge/license-AL2-blue.svg)](/LICENSE)

</div>

---

> useful tools to debug container environments

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Built Using](#built_using)
- [TODO](../TODO.md)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

Toolbox image containing useful tools to debug container environments (e.g. kubernetes)

## 🏁 Getting Started <a name = "getting_started"></a>

### Prerequisites

If you want to change it, you'll need:

- Docker
- Make (optional)
- Internet

change the `Dockerfile` and then run

```shell
make build && make run
```

### Installing

```shell
docker pull wwmoraes/toolbox
```

## 🎈 Usage <a name="usage"></a>

You can run this container locally with:

```shell
docker run --rm -it wwmoraes/toolbox
```

You can also run on a cluster with:

```shell
kubectl run toolbox -i --tty --rm --restart=Never --image=wwmoraes/toolbox
```

## ⛏️ Built Using <a name = "built_using"></a>

- [Docker](https://www.docker.com/)
- [Alpine Linux](https://alpinelinux.org/)
- [Busybox](https://busybox.net/)
- [Multiple GNU tools 🖤](https://www.gnu.org/software/software.html#allgnupkgs)

## ✍️ Authors <a name = "authors"></a>

- [@wwmoraes](https://github.com/wwmoraes)

See also the list of [contributors](https://github.com/wwmoraes/toolbox/contributors) who participated in this project.

## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- GNU tools, packages and philosophy, it never ceases to amaze me
- Kubernetes, the reason I've made such toolbox
