NITRO_FLAGS = $(shell pkg-config --cflags --libs libnitrokey-1)
CXX=g++
binary:
	$(CXX) src/nitro_luks.c -o nitro_luks $(NITRO_FLAGS) -Wall

install:
	install -D -m 0755 nitro_luks $(DESTDIR)/usr/bin/nitro_luks

clean:
	rm -f nitro_luks
