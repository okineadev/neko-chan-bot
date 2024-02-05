SHELL := /bin/bash

.PHONY: update setup start

update:
	@echo "Running update..."
	@. scripts/update.sh

setup:
	@echo "Running setup..."
	@. setup.sh

start:
	@echo "Starting application..."
	@chmod +x scripts/start.sh
	@./scripts/start.sh
