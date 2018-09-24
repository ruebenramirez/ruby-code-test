build:
	docker build -t farmers-market .

test: build
	docker run farmers-market bin/rspec --format doc

run-examples: build
	docker run farmers-market ruby fm --autocheckout --register CH1,AP1,AP1,AP1,MK1
	docker run farmers-market ruby fm --autocheckout --register CF1,CF1
