build:
	@chmod u+x mdloader_mac

download:
	test $(file)
	@echo "Uploading... Put keyboard into DFU Mode (FN + B)"
	./mdloader_mac --first --download $(file) --restart
