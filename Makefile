.PHONY: hugo
hugo:
	CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest

.PHONY: serve
serve:
	hugo server --navigateToChanged -D

.PHONY: rebuild
rebuild:
	@echo "Rebuilding..."
	hugo
