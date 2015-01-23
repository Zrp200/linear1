require "linear/standard"
include Linear
RSpec.describe Standard do
	describe "#new" do
		subject {Standard.new rand, rand, rand}
		it {is_expected.to be_kind_of Function}
		it {is_expected.to respond_to :execute, :a, :b, :c, :direct_variation?}
	end
end
		
