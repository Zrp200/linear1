require "linear1/slope_intercept"
include Linear1
autoload :Graph, "linear1/graph"
RSpec.describe SlopeIntercept do
	describe "#new" do
		subject {SlopeIntercept.new rand, rand}
		it {is_expected.to be_kind_of Function}
		its(:power) {is_expected.to eq 1}
		it {is_expected.to respond_to :execute, :y_intercept, :to_direct_variation, :to_standard, :slope}
		[ [5, 6], [3, 5], [-2, -9], [4.7, 5.3], [Complex(3, 5), Rational(3, 5)], [Rational("2/3"), 3], [Rational("-5/8"), -2], [-5, -3] ].each do |spec|
			context "given #{spec[0]}, #{spec[1]}" do
				subject {SlopeIntercept.new *spec}
				it "should not raise error" do expect{SlopeIntercept.new *spec}.to_not raise_error end
				its(:to_s) {is_expected.to eq "y = #{spec[0]}x + #{spec[1]}"}
				it "should be graphable" do expect{Graph.new subject}.to_not raise_error end
			end
		end
			
	end
end
