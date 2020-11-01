REGISTRY := hishinumat/numa-latex
.PHONY: test numa_benchmark

all:  numa-latex

login:
	docker login 

numa-latex: login
		docker build -t $(REGISTRY):latest . -f ./Dockerfile

push: login numa-latex
		docker push $(REGISTRY):latest

in: 
		docker run -it $(REGISTRY):latest 
