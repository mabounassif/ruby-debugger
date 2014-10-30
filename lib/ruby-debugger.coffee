RubyDebuggerView = require './ruby-debugger-view'
exec = require("child_process").exec;

module.exports =
  rubyDebuggerView: null


  activate: (state) ->
    exec 'ruby -e "puts \'Hello from Ruby!\'"', (err, stdout, stderr) ->
      console.log(stdout)
    @rubyDebuggerView = new RubyDebuggerView(state.rubyDebuggerViewState)

  deactivate: ->
    @rubyDebuggerView.destroy()

  serialize: ->
    rubyDebuggerViewState: @rubyDebuggerView.serialize()
