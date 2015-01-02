Gem::Specification.new do |gem|
	gem.name = "linear_graph"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "A gem to graph lines"
	gem.version = "0.0.0"
	gem.license = "MIT"
	gem.files = Dir["lib/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
	gem.test_files = Dir["spec/lib/*spec.rb"]
 	gem.executables << "quad1"
 	gem.requirements << "Terminal length => 70"
 	gem.requirements << "Terminal width => 140"
end
