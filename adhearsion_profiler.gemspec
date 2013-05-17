# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adhearsion_profiler/version"

Gem::Specification.new do |s|
  s.name        = "adhearsion_profiler"
  s.version     = AdhearsionProfiler::VERSION
  s.authors     = ["Ben Langfeld"]
  s.email       = ["ben@langfeld.me"]
  s.homepage    = "http://github.com/mojolingo/adhearsion_profiler"
  s.summary     = %q{Sets up profiling tools for Adhearsion applications}
  s.description = %q{Helps you understand why your Adhearsion application performs the way it does.}

  # Use the following if using Git
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<adhearsion>, ["~> 2.3"]
  s.add_runtime_dependency %q<ruby-prof>

  s.add_development_dependency %q<bundler>, ["~> 1.0"]
  s.add_development_dependency %q<rake>, [">= 0"]
 end
