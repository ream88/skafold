Gem::Specification.new do |gem|
  gem.name          = 'skafold'
  gem.version       = '0.0.1'
  gem.authors       = 'Mario Uher'
  gem.email         = 'uher.mario@gmail.com'
  gem.description   = 'Generates HTML scaffolds the way I need it everyday as a web developer.'
  gem.summary       = 'HTML scaffolding'
  gem.homepage      = 'http://haihappen.github.com/skafold'

  gem.files         = `git ls-files`.split("\n")
  gem.require_path  = 'lib'

  gem.add_dependency 'activesupport', '~> 3.0'
  gem.add_dependency 'thor'

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'purdytest'
  gem.add_development_dependency 'rake'
end