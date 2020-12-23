1. create makefile
```
PAPER=paper

all:
  platex $(PAPER).tex
  dvipdfmx $(PAPER).dvi -o $(PAPER).pdf
```

2. docker run
> docker run -v $(PWD):/workdir -e UID=$(id -u) -e GID=$(id -g) hishinumat/numa-latex make


https://hub.docker.com/repository/docker/hishinumat/numa-latex
