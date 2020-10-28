all:
	@echo "Welcome! This directory contains a small python web application for testing."
	@echo ""
	@echo "Welcome! This directory contains a small python web application for testing."
	@echo "You can build and run this application using Docker."
	@echo "For a kubernetes example use the `../kubernetes` directory."
	@echo "For a terratest example us the `../test` directory."
	@echo ""
	@echo "The follow are common commands for this directory:"
	@echo ""
	@echo "make build"
	@echo "make run"
	@echo "curl localhost:8080"

build:
	docker build -t mbigras/hello-world-app:0.0.1 .

run:
	docker run -e PORT=8080 -p 8080:8080 mbigras/hello-world-app:0.0.1
