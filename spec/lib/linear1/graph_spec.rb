require "linear1/graph"
include Linear1
RSpec.describe Graph do
  describe "#new" do
    context "given Function" do
      subject {Graph.new Function.new}
      it "should not raise error" do
        expect{Graph.new Function.new}.to_not raise_error
      end
      %i[range domain to_a].each {|method| its(method) {is_expected.to be_an_instance_of Array} }
    end
  end
end
