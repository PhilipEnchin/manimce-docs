# Manim Community Edition Docs

## Building the docs

### *Properly* cloning this repo

Because this repo uses a submodule in order to include the Manim Community Edition repo, cloning is every-so-slightly more complicated than usual:

```sh
git clone --recurse-submodules https://github.com/PhilipEnchin/manimce-docs.git
```

However, if you cloned this repo before reading this, fear not! Just run these two extra commands to finish setting things up:

```sh
git submodule init
git submodule update
```

### Prerequisites

1. [Docker](https://docs.docker.com/get-docker/)
1. [Docker Compose](https://docs.docker.com/compose/install/)

### Build the docs

`Dockerfile` and `docker-compose.yml` are configured to do all the yucky work on your behalf.

```sh
docker-compose up
```

To read your newly-built documentation, open `html/index.html`.


### Update the docs

Pull updates from the Manim Community Edition repo, and build it again:

```sh
git submodule update --remote manim
docker-compose up
```
