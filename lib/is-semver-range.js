var pattern = /^=?\d+\.\d+\.\d+(-.*)?$/;

module.exports = function(version) {
  return !pattern.test(version);
};
