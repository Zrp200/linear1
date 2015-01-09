require "linear/function"
include Linear
RSpec.describe Function do
	describe "new" do
		context "when 1, 0" do
			subject {Function.new 1, 0}
			it "is expected to be direct variation"
		end
	end
end
