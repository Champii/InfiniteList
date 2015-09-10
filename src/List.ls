global import require \prelude-ls

class List

  (@start, @func) ->

    args = [0 @start]
    @array = Object.create Array.prototype
    @array = Array.apply @array, args or @array

    @array.shift!

    import Array
    @array.__proto__.start = @start
    @array.__proto__.generatedTo = 0

    @array.__proto__.gen = ~>*
      i = 1
      @array.__proto__.generatedTo = 1
      loop
        yield @array[i] = @func @array[i - 1], i
        @array.__proto__.generatedTo++
        i++

    @array.__proto__.iter = @array.__proto__.gen!
    @array.__proto__ <<<< @__proto__

    return @array

  get: ->
    for i from @__proto__.generatedTo til it
      @__proto__.iter.next!
    @[it]

module.exports = List
