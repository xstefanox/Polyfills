all: min.js

min.js: js
	uglifyjs --ascii --output String.trim.min.js String.trim.js
	uglifyjs --ascii --output console.min.js console.js
	
js:
	coffee -c String.trim.coffee
	coffee -c console.coffee
	sed -i '' -e '1,2 d' -e '3 N;s/\n/ /;' -e '4 N;s/\n/ /;' String.trim.js
	sed -i '' -e '1,2 d' -e '3 N;s/\n/ /;' -e '4 N;s/\n/ /;' console.js

lint:
	coffeelint String.trim.coffee
	coffeelint console.coffee

docs:
	codo --name 'Polyfills' --title 'Polyfills Documentation' String.trim.coffee console.coffee
	docco --output annotated-src String.trim.coffee console.coffee

clean:
	rm -rf String.trim.js console.js String.trim.min.js console.min.js doc annotated-src

test: js
	coffeelint test.coffee console.coffee
	mocha --reporter spec --compilers coffee:coffee-script test.coffee console.coffee
