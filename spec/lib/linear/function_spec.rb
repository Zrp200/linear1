require "linear/function"
include Linear
RSpec.describe Function do
	describe "new" do
		context "when 1, 0" do
			subject {Function.new 1, 0}
			it {is_expected.to be_direct_variation}
		end
	end
end
