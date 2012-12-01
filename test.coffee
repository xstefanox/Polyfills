assert = require('assert')

require('./String.trim.js')

srcTrim = '  test  '
resTrim = 'test'
resLTrim = 'test  '
resRTrim = '  test'

describe 'String trimming', ->
  
  describe "#trim() trims starting and trailing spaces", ->
    it "trim('#{srcTrim }') should return the string '#{resTrim }'", ->
      assert.equal(srcTrim.trim(), resTrim)
  
  describe "#ltrim() trims starting spaces", ->
    it "trim('#{srcTrim }') should return the string '#{resLTrim }'", ->
      assert.equal(srcTrim.ltrim(), resLTrim)
  
  describe "#rtrim() trims trailing spaces", ->
    it "trim('#{srcTrim }') should return the string '#{resRTrim }'", ->
      assert.equal(srcTrim.rtrim(), resRTrim)

describe 'Console protection', ->
  
  describe 'Ensure that a console.log() call will not result in an ' +
           'exception if the console does not exist', ->
    it 'should not crash', ->
      
      # simulate console is not found by deleting the log function
      delete console.log
      
      # load the polyfill
      require('./console.js')
      
      # simulate a console.log() call
      concole.log('this should not be printed')
      