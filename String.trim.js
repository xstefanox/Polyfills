/*jslint white: true */

/**
 * Implement a consistent cross-browser string trimming method.
 *
 * @see http://perfectionkills.com/whitespace-deviations/
 */
(function()
{
    'use strict';
    
    // define a regular expression character class containing all the existing white/non-white breaking/non-breaking spaces
    var charClass = '[\u0009\u000A\u000B\u000C\u000D\u0020\u00A0\u1680\u180E\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u202F\u205F\u3000\u2028\u2029\uFEFF]';
    
    String.prototype.ltrim = function()
    {
        return this.replace(new RegExp('^' + charClass + '+', 'g'), '');
    };
    
    String.prototype.rtrim = function()
    {
        return this.replace(new RegExp(charClass + '+$', 'g'), '');
    };
    
    String.prototype.trim = function()
    {
        return this.ltrim().rtrim();
    };
}());
