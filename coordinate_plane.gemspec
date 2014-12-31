Gem::Specification.new do |gem|
	gem.name = "coordinate_plane"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "A gem to graph lines"
#	gem.version = (ENV['TRAVIS_TAG'] == "") ? ENV['TRAVIS_BUILD_ID'] : ENV['TRAVIS_TAG']
	gem.version = "0.0.0" unless ENV['TRAVIS']
	gem.license = "MIT"
	gem.files = Dir["lib/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
#	gem.test_files = Dir["spec/lib/*spec.rb"]
 	gem.executables << "coordinate_plane"
end
