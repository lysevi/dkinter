DFLAGS=-unittest -debug -I../ 

DMD=dmd

LDFLAGS=  -lib -L-ltcl8.4 -L-ltk8.4
sdir = .

swc = $(addsuffix /*.d,$(sdir))

OBJ=$(notdir $(patsubst %.d,%.o,$(wildcard $(swc))))

all: dk



dk: $(OBJ)
	@echo  LD $@
	@$(DMD) $(LDFLAGS) $^ -oflibdk.a


VPATH:=$(sdir)

%.o:%.d
	@echo D $<
	@$(DMD) $(DFLAGS) $(addprefix -I,$(sdir)) -c  $<


clean:
	@find . -name \*.o -exec rm -fv {} \;
	@find . -name \*~ -exec rm -fv {} \;
	@find . -name trace.def -exec rm -fv {} \;
	@find . -name trace.log -exec rm -fv {} \;
	@find . -name \*.orig -exec rm -fv {} \;
	@rm -fv *.a
