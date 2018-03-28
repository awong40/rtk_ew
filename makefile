#
# make all cui applications by gcc
# iers depends on gfortran

BINDIR = /usr/local/bin
DIRS   = ../lib/iers rnx2rtkp 

all:
	@for i in $(DIRS); do make -C $$i/gcc; done

install:
	@echo installing...
	@for i in $(DIRS); do cp $$i/gcc/$$i $(BINDIR); done

clean:
	@echo cleaning up...
	@for i in $(DIRS); do make -C $$i/gcc clean; done

