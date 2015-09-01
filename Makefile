R_OPTS=--vanilla --slave -e

all: index.html geoms.html

index.html: graficas.rmd _output.yaml graficas_files/* styles.css
	rm -r -f  graficas_files/figure-html/*
	R $(R_OPTS) "rmarkdown::render('graficas.rmd')"
	mv graficas.html index.html

geoms.html: geoms.rmd _output.yaml graficas_files/* styles.css
	rm -r -f geoms_files/figure-html/*
	R $(R_OPTS) "rmarkdown::render('geoms.rmd')"
