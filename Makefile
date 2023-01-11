.PHONY: build s serve help

.DEFAULT_GOAL:=build

build:
	bundle exec jekyll build -s dump

s: serve ## jekyll s

serve: ## jekyll serve
	bundle exec jekyll serve -s dump

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'