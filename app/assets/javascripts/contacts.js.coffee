$ ->
  $('#search').typeahead
    minLength: 2,
    source: (query, process) ->
      $.getJSON("/contacts/search?q=#{query}", (json) ->
        self.names = []
        self.namesIds = {}
        json.forEach (item) ->
          self.names.push item.name
          self.namesIds[item.name] = item.id
        process self.names
      )
    updater: (item) ->
      window.location.replace "/contacts/#{self.namesIds[item]}"
