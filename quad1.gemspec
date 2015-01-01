Gem::Specification.new do |gem|
	gem.name = "quad1"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "A gem to graph lines on the 1st Quadrent"
	gem.version = "0.0.0"
	gem.license = "MIT"
	gem.files = Dir["lib/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
#	gem.test_files = Dir["spec/lib/*spec.rb"]
 	gem.executables << "quad1"
end
