.PHONY: all c java perl test-c test-java test-perl test clean

all: c java perl

c:
	cd c && $(MAKE)

perl:
	cd perl && $(MAKE)

test-c:
	cd c && $(MAKE) test

test-perl:
	cd perl && $(MAKE) test

test: test-perl
	
clean:
	cd c && $(MAKE) clean