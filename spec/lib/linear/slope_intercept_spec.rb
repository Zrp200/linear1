require "linear/slope_intercept"
include Linear
RSpec.describe SlopeIntercept do
	describe "new" do
		context "when 1, 0" do
			subject {SlopeIntercept.new 1, 0}
			it {is_expected.to be_direct_variation}
		end
	end
end
