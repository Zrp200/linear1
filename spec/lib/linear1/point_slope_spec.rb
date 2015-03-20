require "linear1/point_slope"
RSpec.describe Linear1::PointSlope do
	describe "#new" do
		[ [6, 3, 5], [-2, 1, -3], [-4, 2, 0] ].each do |spec|
			context "given #{spec[0]}, #{spec[1]}, #{spec[2]}" do
				subject {Linear1::PointSlope.new spec[0], spec[1], spec[2]}
				it "should not raise error" do
					expect{Linear1::PointSlope.new spec[0], spec[1], spec[2]}.to_not raise_error
				end
				its(:to_slope_intercept) {is_expected.to be_instance_of Linear1::SlopeIntercept}
			end
		end
	end
	[Linear1::SlopeIntercept(4, 3)].each do |eq|
		context "given #{eq}" do
			subject {Linear1::PointSlope *Array(eq)}
			it {is_expected.to be_instance_of Linear1::PointSlope}
		end
	end
end
