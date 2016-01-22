# heavily inspired/influenced by Douglas Crockford walkTheDOM function
traverse = (node) ->
  each : (fn) ->
    fn node
    node = node.firstChild
    while (node)
      traverse node
        .each fn
      node.nextSibling

node = (node) ->
  root = this
  hasTerm : (term) ->
    return node.innerText.indexOf term isnt -1

findTerm = (term) ->
  root = this
  root.results = []
  results = root.results
  root.src = undefined
  in : (node) ->
    src = node
    if node node
        .hasTerm term
      results.push node
    return root
  x : (times) ->
    console.log "times"
    return results