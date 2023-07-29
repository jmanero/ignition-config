
SUBMAKES += ignition
SUBMAKES += ipxe
SUBMAKES += netboot

.PHONY: all clean $(SUBMAKES)

all: $(SUBMAKES)

clean:
	for sub in $(SUBMAKES); do $(MAKE) -C $$sub clean; done

$(SUBMAKES):
	$(MAKE) -C $@
