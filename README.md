[![Build Status](https://travis-ci.org/tandrewnichols/is-semver-range.png)](https://travis-ci.org/tandrewnichols/is-semver-range) [![downloads](http://img.shields.io/npm/dm/is-semver-range.svg)](https://npmjs.org/package/is-semver-range) [![npm](http://img.shields.io/npm/v/is-semver-range.svg)](https://npmjs.org/package/is-semver-range) [![Code Climate](https://codeclimate.com/github/tandrewnichols/is-semver-range/badges/gpa.svg)](https://codeclimate.com/github/tandrewnichols/is-semver-range) [![Test Coverage](https://codeclimate.com/github/tandrewnichols/is-semver-range/badges/coverage.svg)](https://codeclimate.com/github/tandrewnichols/is-semver-range) [![dependencies](https://david-dm.org/tandrewnichols/is-semver-range.png)](https://david-dm.org/tandrewnichols/is-semver-range)

# is-semver-range

Determine whether a semver pattern is a range or a single version

## Installation

`npm install --save is-semver-range`

## Summary

`is-semver-range` returns true if a version specifier indicates a range of versions and false if it indicates a single version.

```js
var isSemverRange = require('is-semver-range');

isSemverRange('4.0.0'); // false
isSemverRange('=2.3.1'); // false
isSemverRange('0.0.3-rc1'); // false
isSemverRange('>2.0.0'); // true
isSemverRange('>=4 <4.9'); // true
isSemverRange('~0.10.10'); // true
isSemverRange('4 || 5'); // true
isSemverRange('1.x'); // true
isSemverRange('2'); // true
isSemverRange('^3.1.1'); // true
```

## Contributing

Please see [the contribution guidelines](CONTRIBUTING.md).
