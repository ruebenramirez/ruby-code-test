build:
	docker build -t farmers-market .

test: build
	docker run farmers-market bin/rspec --format doc
