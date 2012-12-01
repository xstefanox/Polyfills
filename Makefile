all: min.js

min.js: js
	uglifyjs --no-copyright --output String.trim.min.js String.trim.js
	uglifyjs --no-copyright --output console.min.js console.js
	
js:
	coffee -c String.trim.coffee
	coffee -c console.coffee

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
