Gem::Specification.new do |gem|
	gem.name = "linear"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "Does linear algebra, to an extent"
	gem.version = "1.0.0"
	gem.license = "MIT"
	gem.files = Dir["lib/**/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
	gem.test_files = Dir["spec/**/*spec.rb"]
 	gem.executables << "linear"
 	gem.requirements << "Terminal length => 70"
 	gem.requirements << "Terminal width => 140"
 	gem.add_development_dependency "rspec", "~> 3.1"
 	gem.add_development_dependency "rspec-its", "~> 1.1"
end
