"use strict";
var p = typeof window != 'undefined' && window.performance || {}
var pr = typeof global != 'undefined' && global.process || {}
var raw = false
    || pr.hrtime
    || p.now && function() { return p.now(); }
    || p.mozNow && function() { return p.mozNow(); }
    || p.msNow && function() { return p.msNow(); }
    || p.oNow && function() { return p.oNow(); }
    || p.webkitNow && function() { return p.webkitNow(); }
    || Date.now
    || function () { return new Date().getTime(); };
var ns0 = raw();
exports.nanoseconds =
  raw === pr.hrtime && function() { var t = raw(ns0); return t[0] * 1e9 + t[1]; }
  || p && function() { return raw() * 1e6; }
  || function() { return (raw()-ns0) * 1e6; };
