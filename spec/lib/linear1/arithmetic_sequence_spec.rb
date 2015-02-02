require %w[linear1/arithmetic_sequence]
include Linear1
RSpec.describe ArithmeticSequence do
  describe "#new" do
    [[2, 3, 4, 5, 6], [3, 6, 9, 12], [1, 3, 5, 7, 9]].each do |args|
      context "given #{args}" do
        it "should not raise error" do expect{ArithmeticSequence.new args}.to_not raise_error end
      end
    end
  end
end
