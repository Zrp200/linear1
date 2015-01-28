require "linear/graph"
include Linear
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      it "should not raise error" do
        expect{Graph.new Function.new}.to_not raise_error
      end
      its(:range && :domain && :to_a) {is_expected.to be_an_instance_of Array}
    end
  end
end
