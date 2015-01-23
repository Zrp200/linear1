require "linear/function"
RSpec.describe Linear::Function do
  describe "#new" do
    context "given no arguments" do
      subject {Linear::Function.new}
      its(:to_s) {is_expected.to eq "f(x) = x"}
      its(:power, :slope) {is_expected.to eq 1}
      its(:y_intercept) {is_expected.to be_zero}
    end
  end
end
