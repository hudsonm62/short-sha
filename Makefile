EXAMPLE_SHA = I2E456789OI2E456789OI2E456789OI2E456789O
LENGTH = 7

test:
	script.sh $(EXAMPLE_SHA) $(LENGTH)

lint:
	prettier . --c && shellcheck -P script