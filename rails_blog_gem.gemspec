
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_blog_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_blog_gem"
  spec.version       = RailsBlogGem::VERSION
  spec.authors       = ["roryjackd"]
  spec.email         = ["roryjackd@yahoo.com"]

  spec.summary       = %q{View specific method}
  spec.description   = %q{Provides generated HTML}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
