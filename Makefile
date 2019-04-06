.PHONY: clean build serve upload purge deploy

SRC_DIR=build/

clean:
	@rm -rf $(SRC_DIR)

build: clean
	@hugo

BIND_ADDR := $(shell ipconfig getifaddr en0 || echo "127.0.0.1")
BASE_URL := "http://${BIND_ADDR}"
serve:
	@hugo server --templateMetricsHints --noHTTPCache --disableFastRender --gc --bind ${BIND_ADDR} --baseURL ${BASE_URL}

upload:
	az storage blob upload-batch -d "\$$web" --account-name weshargrovephoto -s ./build --pattern "*"

purge:
	az cdn endpoint purge --profile-name weshargrovephoto --name weshargrove --content-paths "/*"

deploy: build upload purge
	@echo "Deployment done! https://www.weshargrove.com/"
