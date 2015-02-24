$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'assembly-utils/version'

Gem::Specification.new do |s|
  s.name        = 'assembly-utils'
  s.version     = Assembly::Utils::VERSION
  s.authors     = ["Peter Mangiafico","Monty Hindman"]
  s.email       = ["pmangiafico@stanford.edu"]
  s.homepage    = ""
  s.summary     = %q{Ruby gem of methods usesful for assembly and accessioning.}
  s.description = %q{Contains classes to manipulate DOR objects for assembly and accessioning}

  s.rubyforge_project = 'assembly-utils'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'nokogiri'
  s.add_dependency 'csv-mapper'
  s.add_dependency 'fastercsv'
  s.add_dependency 'druid-tools', ">= 0.2.6"
  
  s.add_dependency 'dor-services', ">= 4.0.0"
  s.add_dependency 'dor-workflow-service', '>=1.3.1'
  
  s.add_dependency 'activesupport'
  s.add_dependency 'activeresource'
  s.add_dependency 'addressable', '2.3.5' # avoids ERROR: lib/addressable/uri.rb:1659:in `normalized_fragment': can't modify frozen Addressable::URI (RuntimeError)

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", '~> 3.1'
  s.add_development_dependency "yard"
  
end
