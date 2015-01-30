require "linear1/slope_intercept"
include Linear1
RSpec.describe SlopeIntercept do
	describe "#new" do
		subject {SlopeIntercept.new rand, rand}
		it {is_expected.to be_kind_of Function}
		its(:power) {is_expected.to eq 1}
		it {is_expected.to respond_to :execute, :y_intercept, :to_direct_variation, :to_standard, :slope}
		context "given 1" do
			it "should raise error" do
				expect{SlopeIntercept.new 1}.to raise_error
			end
		end
		context "given 1, 0" do
			subject {SlopeIntercept.new 3, 6}
			it {is_expected.to_not be_direct_variation}
			its(:to_s) {is_expected.to eq "y = 3x + 6"}
		end
		[ [3, 5], [-2, -9], [4.7, 5.3], [Rational("2/3"), 3], [Rational("-5/8"), -2], [-5, -3] ].each do |spec|
			context "given #{spec[0]}, #{spec[1]}" do
				subject {SlopeIntercept.new spec[0], spec[1]}
				its(:to_s) {is_expected.to eq "y = #{spec[0]}x + #{spec[1]}"}
				it "should be graphable" do
					require "linear1/graph"
					expect{Graph.new subject}.to_not raise_error
				end
				

			end
		end
			
	end
end
