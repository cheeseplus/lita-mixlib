Gem::Specification.new do |spec|
  spec.name          = "lita-mixlib"
  spec.version       = "0.1.0"
  spec.authors       = ["Seth Thomas"]
  spec.email         = ["sthomas@chef.io"]
  spec.description   = "Gem to let a lita bot talk to Chef's mixlib"
  spec.summary       = "Gem to let a lita bot talk to Chef's mixlib"
  spec.homepage      = "https://github.com/cheeseplus/lita-mixlib"
  spec.license       = "Apache 2"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.7"
  spec.add_runtime_dependency 'mixlib-install'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
