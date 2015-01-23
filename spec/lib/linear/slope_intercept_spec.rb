require "linear/slope_intercept"
include Linear
RSpec.describe SlopeIntercept do
	describe "#new" do
		subject {SlopeIntercept.new rand, rand}
		it {is_expected.to be_kind_of Function}
		its(:power) {is_expected.to eq 1}
		it {is_expected.to respond_to :execute, :y_intercept}
		context "given 1, 0" do
			subject {SlopeIntercept.new 1, 0}
			its(:slope) {is_expected.to eq 1}
			it {is_expected.to be_direct_variation}
			its(:to_dv) {is_expected.to be_instance_of DirectVariation}
			its(:to_s) {is_expected.to eq "y = x"}
		end
	end
end
