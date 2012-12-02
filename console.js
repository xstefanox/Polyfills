/* The MIT License, Copyright (c) 2012 Stefano Varesi */


(function() {
  var emptyFn, f, functions, global, _base, _i, _len, _ref, _ref1;

  global = typeof exports !== "undefined" && exports !== null ? exports : this;

  if ((_ref = global.console) == null) {
    global.console = {};
  }

  emptyFn = function() {};

  functions = ['assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error', 'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log', 'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd', 'timeStamp', 'trace', 'warn'];

  for (_i = 0, _len = functions.length; _i < _len; _i++) {
    f = functions[_i];
    if (!(global.console[f] != null)) {
      if ((_ref1 = (_base = global.console)[f]) == null) {
        _base[f] = emptyFn;
      }
    }
  }

}).call(this);
