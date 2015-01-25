Gem::Specification.new do |gem|
	gem.name = "linear"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "Does linear algebra, to an extent"
	if ENV['TRAVIS'] then gem.version = ENV['TRAVIS_TAG'] == String.new ? ENV['TRAVIS_BUILD_ID'] : ENV['TRAVIS_TAG']
	else
		gem.version = "1.0.0"
	end
	gem.license = "MIT"
	gem.files = Dir["lib/**/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
	gem.test_files = Dir["spec/**/*spec.rb"]
 	gem.executables << "linear"
 	gem.add_runtime_dependency "briandoll-greatest_common_factor", "~> 0.0"
 	gem.add_development_dependency "rspec", "~> 3.1"
 	gem.add_development_dependency "rspec-its", "~> 1.1"
end
