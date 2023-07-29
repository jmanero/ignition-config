## Write ipxe variables from fedora-coreos build metadata
default: streams/next.ipxe streams/stable.ipxe

.PHONY: clean
clean:
	rm -rf .cache streams

## Keep cached channel build information
.PRECIOUS: cache/%.json
## Always trigger dependent targets
.FORCE:

## Get the latest FCOS build-id. Always check for the freshness of a cached ETag
.cache/streams/%.json: .FORCE
	mkdir -p $(@D)
	curl --silent --show-error --output $@ --etag-compare $@.etag --etag-save $@.etag https://builds.coreos.fedoraproject.org/prod/streams/$*/builds/builds.json

## Write an ipxe script with the ciurrent latest coreos version
streams/%.ipxe: .cache/streams/%.json
	mkdir -p $(@D)
	jq -r '"#!ipxe\n\n# Generated on \(now | todate)\nset coreos/version \(.builds[0].id)"' $< | tee $@
