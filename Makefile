COMPONENTS=python python-runtime

all:
	$(foreach component,$(COMPONENTS),make -C $(component);)
