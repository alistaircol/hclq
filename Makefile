# required for heredocs: https://stackoverflow.com/a/36148655/5873008
.ONESHELL:
# continue if command fails, i.e. docker rmi has no images locally
.IGNORE:
# run build if command is simply make
.PHONY: build

# https://gist.github.com/rsperl/d2dfe88a520968fbc1f49db0a29345b9
# define standard colors
BLACK        := $(shell tput -Txterm setaf 0)
RED          := $(shell tput -Txterm setaf 1)
GREEN        := $(shell tput -Txterm setaf 2)
YELLOW       := $(shell tput -Txterm setaf 3)
LIGHTPURPLE  := $(shell tput -Txterm setaf 4)
PURPLE       := $(shell tput -Txterm setaf 5)
BLUE         := $(shell tput -Txterm setaf 6)
WHITE        := $(shell tput -Txterm setaf 7)
RESET        := $(shell tput -Txterm sgr0)

build:
	@docker rmi -f alistaircol/hclq
	@docker build --force-rm --tag=alistaircol/hclq:latest --tag=alistaircol/hclq:0.5.3 .

test:
	@docker run --rm -it alistaircol/hclq:latest

colors: ## debugging show all the colors
	@echo "${BLACK}BLACK${RESET}"
	@echo "${RED}RED${RESET}"
	@echo "${GREEN}GREEN${RESET}"
	@echo "${YELLOW}YELLOW${RESET}"
	@echo "${LIGHTPURPLE}LIGHTPURPLE${RESET}"
	@echo "${PURPLE}PURPLE${RESET}"
	@echo "${BLUE}BLUE${RESET}"
	@echo "${WHITE}WHITE${RESET}"
