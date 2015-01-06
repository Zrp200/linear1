require "linear_graph"
RSpec.describe LinearGraph do
	describe "#new" do
		subject {LinearGraph rand, rand}
		its(:xy) {is_expected.to be_instance_of Hash}
		describe "to_s" do
			subject {LinearGraph(rand, rand).to_s}
			it {is_expected.to be_instance_of String}
			it {is_expected.to be_include "#"}
		end
		context "when 1, 0" do
			subject {LinearGraph 1, 0}
			its(:zero) {is_expected.to be_zero}
			describe "f(x)" do
				context "when 5" do
					subject {(LinearGraph.new 1, 0).f(5)}
					it {is_expected.to eq 5}
				end
				context "when 1" do
					subject {LinearGraph.new(1, 0).f(1)}
					it {is_expected.to eq 1}
				end
			end
		end		
	end			
end				
