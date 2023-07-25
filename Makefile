## Prepare ignition JSON configurations from butane YAML configurations
BUTANE_YML    := $(wildcard *.butane.yml)
IGNITION_JSON := $(BUTANE_YML:butane.yml=ign.json)

default: ignition

.PHONY: ignition
ignition: $(IGNITION_JSON)

.PHONY: clean
clean:
	-rm $(IGNITION_JSON)

## Compile ignition JSON from butane files
%.ign.json: %.butane.yml $(wildcard share/*.butane.yml)
	butane --files-dir $(@D) --output $@ --pretty $<
