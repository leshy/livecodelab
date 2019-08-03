
class Languages

  constructor: (@eventRouter, @globalScope) ->
    # LiveLang = require ('../languages/livelangv1')
    LiveLang = require ('../languages/js')
    @compiler = new LiveLang.compiler(@eventRouter)
    @runner = new LiveLang.runner(@eventRouter, @compiler, @globalScope)

module.exports = Languages

