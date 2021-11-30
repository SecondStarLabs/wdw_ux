require_relative "lib/wdw_ux/version"

Gem::Specification.new do |spec|
  spec.name        = "wdw_ux"
  spec.version     = WdwUx::VERSION
  spec.authors     = ["captproton"]
  spec.email       = ["carl@wdwhub.net"]
  spec.homepage    = "https://github.com/SecondStarLabs/wdw_ux"
  spec.summary     = "Easily add styles of wdwhub.net"
  spec.description = "Easily add styles of wdwhub.net"
    spec.license     = "MIT"
  

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SecondStarLabs/wdw_ux"
  spec.metadata["changelog_uri"] = "https://github.com/SecondStarLabs/wdw_ux/CHANGELOG"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4"
end
