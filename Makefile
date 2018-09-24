
build:
	docker build -t farmers-market .

test: build
	docker run farmers-market bash -c"bin/rspec --format doc"
