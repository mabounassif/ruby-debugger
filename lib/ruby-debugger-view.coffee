{View} = require 'atom'

module.exports =
class RubyDebuggerView extends View
  @content: ->
    @div class: 'ruby-debugger overlay from-top', =>
      @div "Mahmoud is the best", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "ruby-debugger:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "RubyDebuggerView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
