
BIN=fdclone-3.01b-1-x86_64.pkg.tar.xz

.PHONY: clean all $(BIN)

$(BIN): PKGBUILD
	makepkg

clean:
	rm -rf pkg
	rm -rf src
	rm -rf *.tar.gz
	rm -rf *.tar.xz

all: clean $(BIN)
