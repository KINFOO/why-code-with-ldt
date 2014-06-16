TARGET=./presentation
OUTPUT=${TARGET}/index.html
all:
	bower install
	mkdir -p ${TARGET}
	cat templates/header.html > ${OUTPUT}
	pandoc --to revealjs README.md >> ${OUTPUT}
	cat templates/footer.html >> ${OUTPUT}
	ln -fs ${shell pwd}/bower_components ${TARGET}/bower_components
clean:
	rm -fr ${TARGET}
