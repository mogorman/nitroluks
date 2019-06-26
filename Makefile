NITRO_FLAGS = $(shell pkg-config --cflags --libs libnitrokey-1)
CXX=g++
binary:
	$(CXX) src/nitro_luks.c -o nitro_luks $(NITRO_FLAGS) -Wall

clean:
	rm -f nitro_luks
