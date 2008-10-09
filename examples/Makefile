DFLAGS= -L-ltcl8.4 -L-ltk8.4 -I../ -L-L../dk/  -L-ldk

DMD=dmd

all:  fr ex1 ex2 ex3 ex4 ex5 ex6 ex7 ex8 ex9

lib:
	cd ../&& make ldk

ex1:lib e1.d
	$(DMD) $(DFLAGS) e1.d  -ofe1

ex2:lib e2.d
	$(DMD) $(DFLAGS) e2.d  -ofe2

ex3:lib e3.d
	$(DMD) $(DFLAGS) e3.d  -ofe3

ex4:lib e4.d
	$(DMD) $(DFLAGS) e4.d  -ofe4

ex5:lib e5.d
	$(DMD) $(DFLAGS) e5.d  -ofe5

ex6:lib e6.d
	$(DMD) $(DFLAGS) e6.d  -ofe6

ex7:lib e7.d
	$(DMD) $(DFLAGS) e7.d  -ofe7

ex8:lib e8.d
	$(DMD) $(DFLAGS) e8.d  -ofe8

ex9:lib e9.d
	$(DMD) $(DFLAGS) e9.d  -ofe9

fr:lib fuzzy_rule.d
	$(DMD) $(DFLAGS) fuzzy_rule.d  -offrule

clean:
	@find . -name \*.o -exec rm -fv {} \;
	@find . -name \*~ -exec rm -fv {} \;
	@rm -vf e1 e2 e3 e4 e5 e6 e7 e8 e9 fr
