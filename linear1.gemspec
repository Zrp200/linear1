Gem::Specification.new do |gem|
	gem.name = "linear1"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "Does linear algebra, to an extent"
	gem.version = "2.0.0.build." + ENV['TRAVIS_BUILD_NUMBER'] + if ENV['TRAVIS']
	gem.version ||= "2.0.0"
	gem.homepage = "https://github.com/Zrp200/linear1"
	gem.license = "MIT"
	gem.files = Dir["lib/**/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
	gem.test_files = Dir["spec/**/*spec.rb"]
 	gem.add_development_dependency "rspec", "~> 3.1"
 	gem.add_development_dependency "rspec-its", "~> 1.1"
end
