Gem::Specification.new do |spec|
  spec.name          = "split_off"
  spec.version       = "1.0.0"
  spec.files         = ["lib/split_off.rb"]
  spec.authors       = ["Jan Renra Gloser"]
  spec.email         = ["jan.renra.gloser@gmail.com"]
  spec.summary       = 'A method to split off a part a hash'
  spec.homepage      = "https://github.com/renra/split-off-ruby"
  spec.license       = "MIT"

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
end
