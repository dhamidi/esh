.POSIX:

PREFIX?=/usr/local
BINPREFIX=${PREFIX}/bin

BIN=esh eshc

install:
	@mkdir -p ${BINPREFIX}
	@for f in ${BIN}; do \
	cp -v bin/$$f ${BINPREFIX}/$$f; \
	chmod 755 ${BINPREFIX}/$$f; \
	done

uninstall:
	@for f in ${BIN}; do \
	rm -v ${BINPREFIX}/$$f; \
	done
