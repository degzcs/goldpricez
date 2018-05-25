
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "goldpricez/version"

Gem::Specification.new do |spec|
  spec.name          = "goldpricez"
  spec.version       = Goldpricez::VERSION
  spec.authors       = ["Diego Gomez"]
  spec.email         = ["diego.f.gomez.pardo@gmail.com"]

  spec.summary       = %q{Gem to wrap Goldpricez API}
  spec.description   = %q{Gem to wrap Goldpricez API. This is unofficial gem (until now)}
  spec.homepage      = "https://github.com/degzcs/goldpricez"
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
  spec.add_development_dependency "vcr", "~> 3"
  spec.add_development_dependency "webmock", "~> 2.1"
  spec.add_development_dependency "spirit_hands", "~> 2"

  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "json", "~> 1.7"

end
