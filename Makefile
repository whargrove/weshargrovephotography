SRC_DIR=build/

clean:
	@rm -rf $(SRC_DIR)

build: clean
	@hugo

BIND_ADDR := $(shell ipconfig getifaddr en0)
BASE_URL := "http://${BIND_ADDR}"
serve:
	-@hugo server --bind ${BIND_ADDR} --baseURL ${BASE_URL}
