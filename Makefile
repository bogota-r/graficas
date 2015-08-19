R_OPTS=--vanilla --slave -e

index.html: graficas.rmd _output.yaml graficas_files/* styles.css
	R $(R_OPTS) "rmarkdown::render('graficas.rmd')"
	mv graficas.html index.html
