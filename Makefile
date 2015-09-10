R_OPTS = --vanilla --slave -e
OUTPUTS = graficas_cache/* graficas_files/figure-html/* geoms_cache/* \
					geoms_files/figure-html/*
					
all: index.html geoms.html

clean:
	rm -r -f  $(OUTPUTS)

index.html: graficas.rmd _output.yaml graficas_files/* styles.css
	rm -r -f  graficas_files/figure-html/*
	R $(R_OPTS) "rmarkdown::render('graficas.rmd')"
	mv graficas.html index.html

geoms.html: geoms.rmd _output.yaml geoms_files/* styles.css
	rm -r -f geoms_files/figure-html/*
	R $(R_OPTS) "rmarkdown::render('geoms.rmd')"
