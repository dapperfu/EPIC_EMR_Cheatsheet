.PHONY: default
default: all

MK_DIR:=$(realpath $(dir $(lastword ${MAKEFILE_LIST})))
include $(realpath ${MK_DIR}/cheatsheet.mk)
all: ${ALL}

.PHONY: clean
clean:
	rm -rf *.pdf *.dvi

.PHONY: debug
debug:
	$(info $${MK}=${MK})
	$(info $${PDFMW}=${PDFBW})
	$(info $${DVI_FLAGS}=${DVI_FLAGS})
	$(info $${DVI_FLAGS_}=${DVI_FLAGS_})
	$(info $${MK_DIR}=${MK_DIR})

.PHONY: watch
watch:
	 watchmedo shell-command --pattern "*.tex" --command make
