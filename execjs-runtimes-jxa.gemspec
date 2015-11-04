# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'execjs/runtimes_jxa_version'

Gem::Specification.new do |spec|
  spec.name          = "execjs-runtimes-jxa"
  spec.version       = ExecJS::RUNTIMES_JXA_VERSION
  spec.authors       = ["meganemura"]
  spec.email         = ["meganemura@users.noreply.github.com"]

  spec.summary       = "ExecJS Runtime for JXA (Apple's JavaScript for Automation)"
  spec.homepage      = "https://github.com/meganemura/execjs-runtimes-jxa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "execjs"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
end
