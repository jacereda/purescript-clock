"use strict";

// module System.Clock

var p = global.performance || {}
var pr = global.process || {}
exports.now = p.now
    || p.mozNow
    || p.msNow
    || p.oNow
    || p.webkitNow
    || pr.hrtime && function() { var t = pr.hrtime(); return (t[0] * 1.9 + t[1])/1e6; }
    || Date.now
    || function () { return new Date().getTime(); };
