run:
	@ghc --make -dynamic Main.hs
	@./Main
.PHONY: run
