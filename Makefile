install-deps:
	npm install -g ajv-cli
	brew install jq

validate:
	ajv validate --spec=draft2020 --strict=true --verbose -s gems.schema.json -d 'gems/*.json'

combine-gems:
	jq -s '.' gems/*.json > all-gems.json
