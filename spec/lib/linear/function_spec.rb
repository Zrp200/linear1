require "linear/function"
RSpec.describe Linear::Function do
  describe "#new" do
    context "given no arguments" do
      subject {Linear::Function.new}
      its(:power) {is_expected.to eq 1}
      its(:slope) {is_expected.to eq 1}
      its(:y_intercept) {is_expected.to be_zero}
      its(:execute, 0) {is_expected.to be_zero}
    end
  end
end
