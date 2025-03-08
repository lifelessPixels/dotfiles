OUTDIR	:= cmake-build

all:
	cmake -B $(OUTDIR)
	cmake --build $(OUTDIR)

run: all
	./$(OUTDIR)/@@PROJECT_NAME@@

clean:
	rm -rf $(OUTDIR)
