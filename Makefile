utf-8-test.codepoints.txt: utf-8-test.txt ./codepoints.pl
	./codepoints.pl "$<" >"$@.tmp"
	mv "$@.tmp" "$@"
