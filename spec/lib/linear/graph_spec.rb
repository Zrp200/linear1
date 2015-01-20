require "linear/graph"
include Linear
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      context "with arguments 2, 1, 2" do
        it "should not fail" do
          expect{Graph.new Function.new(2, 1, 2}.to_not fail
        end
      end
    end
  end
end
