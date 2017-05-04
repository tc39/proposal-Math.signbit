.PHONY: help clean html

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"

clean:
	rm -f ./*.html

html:
	bikeshed update
	find ./ -name "*.bs" -type f | grep -v bikeshed | xargs -I{} -t -n1 bikeshed spec {}
