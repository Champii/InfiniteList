var livescript = require('livescript');
var List = require('./src/List');

var list = new List(0, function (prev, i) {return prev + 2});

console.log(list.get(5));
console.log(list);

module.exports = List;
