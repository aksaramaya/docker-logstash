PROJ_DIRS := 2.4
PROJ_ALL_DIRS := 2.4/all-plugins

.PHONY: all clean $(PROJ_DIRS)

all: $(PROJ_DIRS)

clean: $(PROJ_DIRS)

$(PROJ_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
