require "linear/graph"
include Linear
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      context "with arguments 2, 1, 2" do
        it "should not fail" do
          expect{Graph.new Function.new}.to_not raise_error
        end
      end
    end
  end
end
