src := iosevka-mk.toml
out := ttf

.PHONY: all deps clean

all: $(out)

deps:
	brew install node
	brew install ttfautohint
	brew install caryll/tap/otfcc-mac64

clean:
	rm -rf $(out)

$(out): $(src)
	./build.sh
