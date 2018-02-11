WORKDIR := $(shell pwd)
PORT := 4000
SRC := blog

pull:
	docker pull jekyll/jekyll

init-blog:
	docker run -v ${WORKDIR}:/srv/jekyll -it jekyll/jekyll jekyll new ${SRC}

build: pull
	docker run -v ${WORKDIR}:/srv/jekyll -p 4000:4000 -it jekyll/jekyll jekyll build -s ${SRC} -d build

serve: build
	docker run -v ${WORKDIR}:/srv/jekyll -p 4000:4000 -it jekyll/jekyll jekyll serve -s ${SRC} -d build

deploy: build
	git push origin
