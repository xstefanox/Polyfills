###
Implement a consistent cross-browser string trimming method.
Use a regular expression character class containing all the existing
white/non-white breaking/non-breaking spaces.
@see http://perfectionkills.com/whitespace-deviations/
###

charClass = '[\u0009\u000A\u000B\u000C\u000D\u0020\u00A0\u1680\u180E\u2000' +
            '\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A' +
            '\u202F\u205F\u3000\u2028\u2029\uFEFF]'

String::ltrim = ->
  this.replace(new RegExp('^' + charClass + '+', 'g'), '')

String::rtrim = ->
  this.replace(new RegExp(charClass + '+$', 'g'), '')

String::trim = ->
  this.ltrim().rtrim()
