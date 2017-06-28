# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sw3p/version"

Gem::Specification.new do |spec|
  spec.name          = "sw3p"
  spec.version       = Sw3p::VERSION
  spec.authors       = ["ICanDoAllThingThroughChrist"]
  spec.email         = ["ctlee9096@gmail.com"]

  spec.summary       = %q{tracking tasks for sw3p assignments.}
  spec.description   = %q{ruby gem to track tasks for sw3p assignments}
  spec.homepage      = "https://github.com/ICanDoAllThingThroughChrist/sw3p.git"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "'http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  spec.add_development_dependency 'pry-rescue', '~> 1.4', '>= 1.4.5'
  spec.add_development_dependency 'pry-stack_explorer', '~> 0.4.9.2'
  spec.add_development_dependency 'pry-doc', '~> 0.10.0'
end
