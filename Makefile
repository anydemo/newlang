.PHONY: check
check: fmt lint
	cargo check -v

.PHONY: build
build:
	cargo build -v

.PHONY: run
run:
	cargo run

.PHONY: watch
watch:
	cargo watch -x fmt -x run

.PHONY: test
test: fmt
	cargo test

.PHONY: fmt
fmt: 
	cargo fmt

.PHONY: lint
lint:
	cargo clippy

.PHONY: release
release: 
	cargo build --release

.PHONY: ast
ast:
	cargo rustc -- -Z ast-json

.PHONY: macro_expand
macro_expand:
	cargo rustc -- -Z unstable-options --pretty=expanded
