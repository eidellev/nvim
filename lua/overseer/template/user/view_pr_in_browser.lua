return {
  name = "GH: View PR in browser",
  builder = function(params)
    return {
      cmd = { "gh", "pr", "view", "-w" },
      args = params.args,
      components = {
        "on_exit_set_status",
        "on_complete_notify",
      },
    }
  end,
}
