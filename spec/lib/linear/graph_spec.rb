require "linear/graph"
include Linear
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      it "should not raise error" do
        expect{Graph.new Function.new}.to_not raise_error
      end
    end
  end
end
