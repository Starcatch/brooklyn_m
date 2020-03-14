require_relative 'lib/BrooklynM/version'

Gem::Specification.new do |spec|
  spec.name          = "BrooklynM"
  spec.version       = BrooklynM::VERSION
  spec.authors       = ["Starcatch"]
  spec.email         = ["timurmishiev@gmail.com"]

  spec.summary       = "Shows Brooklyn Museum"
  spec.description   = "best scraper ever"
  spec.homepage      = "git@github.com:Starcatch/brooklyn_m.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "git@github.com:Starcatch/brooklyn_m.git"
  spec.metadata["changelog_uri"] = "git@github.com:Starcatch/brooklyn_m.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
