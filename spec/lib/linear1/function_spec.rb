require "linear1/function"
include Linear1
RSpec.describe Function do
  describe Function.new do
    its(:to_s) {is_expected.to eq "f(x) = x"}
    its(:power) {is_expected.to eq 1}
    its(:slope) {is_expected.to eq 1}
    its(:y_intercept) {is_expected.to be_zero}
  end
end
