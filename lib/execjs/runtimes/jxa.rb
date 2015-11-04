require "execjs/runtimes"
require "execjs/runtimes/jxa/version"

module ExecJS
  module Runtimes
    JXA = ExternalRuntime.new(
      name:        "JXA",
      command:     "/usr/bin/osascript -l JavaScript",
      runner_path: File.expand_path("../..", __FILE__) + "/support/jxa_runner.js"
    )
  end
end
