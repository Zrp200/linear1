require "linear1/standard"
include Linear1
RSpec.describe Standard do
	describe "#new" do
		[	[2, 3, 4], [Rational(5, 4), Complex(3, 4), 6], [2.3, 5.4, 3.6]	].each do |args|
			describe "given #{spec[0]}, #{spec[1]}, #{spec[2]}" do
				subject {Standard.new spec[0], spec[1], spec[2]}
				it {is_expected.to be_kind_of Function}
				its(:to_s) {is_expected.to eq "#{spec[0]}x + #{spec[1]}y = #{spec[2]}"}
				it {is_expected.to respond_to :execute, :add, :a, :b, :c, :direct_variation?}
				
			end
		end
	end
end
		
