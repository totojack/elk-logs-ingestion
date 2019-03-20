# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'

help:  ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

start: ## start docker
	@docker-compose up -d

stop:  ## stop docker
	@docker-compose stop

validate:  ## validate docker compose
	@docker-compose config

logstail:  ## tail logs
	@docker-compose logs -f 
