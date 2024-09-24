
build:
	@go build -o bin/build ./cmd &&  rm -rf ./bin/frontend && npm --prefix ./client run build 

runFrontend:
	@npm --prefix ./pkg/client start

run:
	@./bin/build  

format:
	@gofmt -w .

get: 
	@go mod tidy && npm --prefix ./client install

help:
	@echo "Available commands:"
	@echo "  make build         - Build the application"
	@echo "  make run           - Run the application"
	@echo "  make runFrontend   - Run the frontend on port 3000"
	@echo "  make test          - Test the application"
	@echo "  make get           - Install dependencies"
	@echo "  make format        - Format code"
	@echo "  make help          - Show this help message"



