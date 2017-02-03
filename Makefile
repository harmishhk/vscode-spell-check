all: package

.PHONY: package

package:
	@docker run --rm -it \
		-v $(CURDIR):$(CURDIR) \
		-w $(CURDIR) \
		node bash -c "npm install --unsafe-perm && npm install -g vsce && vsce package"
