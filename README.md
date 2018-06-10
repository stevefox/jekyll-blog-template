This is a simple project to get started with Jekyll Static HTML
blogs. Jekyll is a really powerful, yet simple ruby-based tool for
creating blogs and static website content using `markdown`.

I created this repository to demonstrate the way that I use the
library `jekyll/jekyll` docker image, as well as to automate a few
additional details such as initialization of a blog.

 ## Prerequisites

* Install `docker`, `make` and `git`

## Quick Start

```
make init-blog
make serve && firefox localhost:4000
```

## Publishing to Github Pages

You can serve the `build/` directory as static html on any webserver, or using [Github Pages](https://pages.github.com/).
