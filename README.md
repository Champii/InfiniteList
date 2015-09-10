# InfiniteList
Infinite Sequence List in Javascript

Under developement

### /!\ This library use ES6 generators, your node binary must use --harmony flag /!\

# Usage
<!-- npm install infinitelist -->
```livescript
List = require \infinitelist

list = new List 0 (+ 2)

console.log list.get 5 # 10
console.log list       # [0, 2, 4, 6, 8, 10]
```

# API


```livescript
new List(startValue, iterator)
```
Iterator is a function of the following form :

```livescript
(prev, i) ->
```
With `prev` the last element in the list, and `i` the current generating index.
