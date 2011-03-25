# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "graceful_rounding/version"

Gem::Specification.new do |s|
  s.name        = "graceful_rounding"
  s.version     = GracefulRounding::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chase Southard"]
  s.email       = ["chase.southard@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Rounds Time object back based on a +/- 7 minute grace period}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "graceful_rounding"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
