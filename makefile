compile: expand
	./priv/jsx_compile.escript\
	 	src/jsx\
	 	src/jsx_utf8\
	 	src/jsx_utf16\
	 	src/jsx_utf16le\
	 	src/jsx_utf32\
	 	src/jsx_utf32le
	
debug: expand
	./priv/jsx_compile.escript -d\
		src/jsx\
	 	src/jsx_utf8\
	 	src/jsx_utf16\
	 	src/jsx_utf16le\
	 	src/jsx_utf32\
	 	src/jsx_utf32le
	
expand:
	./priv/jsx_expand.escript utf8 utf16 utf16le utf32 utf32le
    
test: compile
	./priv/jsx_test.escript test/cases
	
prove:
	prove ./priv/jsx_test.escript

examples: force
	./priv/jsx_compile.escript\
	    examples/jsx_eep0018

clean:
	./priv/jsx_clean.escript
	
install: clean compile
	./priv/jsx_install.escript
	
force: