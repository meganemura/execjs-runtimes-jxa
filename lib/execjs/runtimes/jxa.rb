require "execjs/runtimes"
require "execjs/runtimes_jxa_version"

module ExecJS
  module Runtimes
    JXA = ExternalRuntime.new(
      name:        "JXA",
      command:     "/usr/bin/osascript -l JavaScript",
      runner_path: File.expand_path("../..", __FILE__) + "/support/jxa_runner.js"
    )

    # Call self.runtimes once to set built-in runtimes into @runtimes
    self.runtimes

    @runtimes << JXA
  end
end
