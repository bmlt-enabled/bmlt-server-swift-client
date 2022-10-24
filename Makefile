.PHONY: generate-api-client
openapi.json:
	curl http://localhost:8000/main_server/api/v1/openapi.json > openapi.json

generate: openapi.json
	docker run --rm -v "$(shell pwd):/local" -w /local openapitools/openapi-generator-cli generate \
	    -i openapi.json \
	    -g swift5 \
	    -p projectName=bmlt \
	    -p podVersion=1.0.0 \
	    -p podAuthors=bmlt-enabled \
	    -p podDescription="BMLT Admin API Client" \
	    -p podLicense=MIT \
		--git-repo-id=bmlt-root-server-go-client \
		--git-user-id=bmlt-enabled \
	    -o .

clean:
	rm -f openapi.json
