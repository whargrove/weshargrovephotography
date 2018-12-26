SRC_DIR=build/

build:
	@hugo

server:
	-@hugo server

clean:
	@rm -rf $(SRC_DIR)
