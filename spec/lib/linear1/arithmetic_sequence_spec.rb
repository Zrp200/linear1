require 'linear1/arithmetic_sequence'
require 'bigdecimal'
include Linear1
RSpec.describe ArithmeticSequence do
  describe "#new" do
    [ [2, 3, 4, 5, 6], [1_000_000, 1_500_000, 2_000_000], [Complex(1, 2), Complex(2, 2), Complex(3, 2)] ].each do |args|
      context "given #{args}" do
        subject {ArithmeticSequence.new *args}
        it "should not raise error" do expect{ArithmeticSequence.new *args}.to_not raise_error end
	it {is_expected.to be_kind_of Function}
      end
    end
  end
end
