###
Implement a browser console object if the browser does not support it
###

# target both CommonJS and the browser
global = exports ? this
    
global.console ?= {}

emptyFn = ->
    
functions = [ 'assert', 'clear', 'count', 'debug', 'dir', 'dirxml',
              'error','exception', 'group', 'groupCollapsed',
              'groupEnd', 'info', 'log', 'markTimeline', 'profile',
              'profileEnd', 'table', 'time', 'timeEnd', 'timeStamp',
              'trace', 'warn' ]
    
global.console[f] ?= emptyFn for f in functions when not global.console[f]?
