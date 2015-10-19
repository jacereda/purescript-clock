"use strict";

// module System.Clock

exports.now = typeof(performance) == 'undefined' && require('performance-now') || function() { return performance.now(); }
