require "linear/slope_intercept"
include Linear
RSpec.describe SlopeIntercept do
	describe "#new" do
		subject {SlopeIntercept.new rand, rand}
		it {is_expected.to be_kind_of Function}
		its(:power) {is_expected.to eq 1}
		it {is_expected.to respond_to :execute, :y_intercept, :to_direct_variation, :to_standard, :slope}
		context "given 1, 0" do
			subject {SlopeIntercept.new 3, 6}
			it {is_expected.to_not be_direct_variation}
			its(:to_s) {is_expected.to eq "y = 3x + 6"}
		end
	end
end
