require "linear_algebra/function"
include LinearAlgebra
RSpec.describe Function do
  describe "#new" do
    context "given no arguments" do
      subject {Function.new}
      its(:to_s) {is_expected.to eq "f(x) = x"}
      its(:power) {is_expected.to eq 1}
      its(:slope) {is_expected.to eq 1}
      its(:y_intercept) {is_expected.to be_zero}
    end
  end
end
