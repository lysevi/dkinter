all:ldk

ldk:
	@cd dk&& make all

clean:
	@find . -name \*.o -exec rm -fv {} \;
	@find . -name \*~ -exec rm -fv {} \;
	@cd  dk&& make clean
	@rm -vf test trace.def trace.log
