NIX_EXPRESSIONS=out/checkmake.nix out/default.nix

nixexprs.tar.bz2: $(NIX_EXPRESSIONS)
	tar -cj -f $@ out

out/%.nix: %.nix
	cp $< $@

.PHONY: clean
clean:
	rm -rvf out/* nixexprs.tar.bz2

install:
	nix-channel --update
