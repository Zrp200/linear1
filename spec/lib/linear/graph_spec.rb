require "linear/graph"
include Linear
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      subject {Graph.new Function.new}
      its(:solution) {is_expected.to be_zero}
    end
  end
end
