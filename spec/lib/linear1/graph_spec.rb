require "linear1/graph"
include Linear1
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      subject {Graph.new Function.new}
      it "should not raise error" do
        expect{Graph.new Function.new}.to_not raise_error
      end
    end
  end
end
