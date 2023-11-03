## Prepare ignition JSON configurations from butane YAML configurations
BUTANE_YML    := $(wildcard *.butane.yml)
IGNITION_JSON := $(BUTANE_YML:butane.yml=ign.json)

.PHONY: default clean
default: $(IGNITION_JSON)
clean:
	-find . -name '*.ign.json' -delete -print

## Compile ignition JSON from butane files. Recursivly compile references to
## ign.json files (e.g. ignition.config.merge[].local) in submakes
%.ign.json: %.butane.yml
	grep '\./.*\.ign.json' $< && $(MAKE) $(shell grep -oh '\./.*\.ign.json' $<) || true
	butane --files-dir $(@D) --output $@ --pretty $<
