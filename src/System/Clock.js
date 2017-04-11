"use strict";

// module System.Clock
var p = typeof window != 'undefined' && window.performance || {}
var pr = typeof global != 'undefined' && global.process || {}
exports.now = p.now && function() { return p.now() * 1e6; }
    || p.mozNow && function() { return p.mozNow() * 1e6; }
    || p.msNow && function() { return p.msNow() * 1e6; }
    || p.oNow && function() { return p.oNow() * 1e6; }
    || p.webkitNow && function() { return p.webkitNow() * 1e6; }
    || pr.hrtime && function() { var t = pr.hrtime(); return t[0] * 1e9 + t[1]; }
    || Date.now && function() { return Date.now() * 1e6; }
    || function () { return new Date().getTime() * 1e6; };
