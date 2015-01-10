require "linear/slope_intercept"
include Linear
RSpec.describe SlopeIntercept do
	describe "#new" do
		subject {SlopeIntercept.new rand, rand}
		it {is_expected.to be_kind_of Function}
		it {is_expected.to respond_to :execute, :to_fun, :slope, :y_intercept}
		context "when 1, 0" do
			subject {SlopeIntercept.new 1, 0}
			it {is_expected.to be_direct_variation}
			its(:to_s) {is_expected.to eq "y = x"}
		end
	end
end
