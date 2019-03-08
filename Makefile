release:
	openssl sha384 -binary -out $${BIN:?please set BIN env var to something like 'myapp.bin'}.sig ${BIN}
	printf "%08x" $$(cat ${BIN} | wc -c)| xxd -r -p >> ${BIN}.sig
