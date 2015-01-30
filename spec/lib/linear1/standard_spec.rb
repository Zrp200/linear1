require "linear1/standard"
include Linear1
RSpec.describe Standard do
	describe "#new" do
		[	[5_000_000, 3_969_567, 4_000_456], [2, 3, 4], [Rational(5, 4), Rational(3, 7), Rational(9, 11)], [2.3, 5.4, 3.6], [Complex(3, 4), Complex(9, 7), Complex(10, 13)]	].each do |args|
			describe "given #{args[0]}, #{args[1]}, #{args[2]}" do
				subject {Standard.new args.first, args[1], args[2]}
				it {is_expected.to be_kind_of Function}
				its(:to_s) {is_expected.to eq "#{args.first}x + #{args[1]}y = #{args[2]}"}
				it {is_expected.to respond_to :execute, :add, :a, :b, :c, :direct_variation?}
				
			end
		end
	end
end
		
