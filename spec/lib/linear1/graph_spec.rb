require "linear1/graph"
include Linear1
RSpec.describe Graph do
  describe "#new" do
    [Function.new, SlopeIntercept.new(2, 3), Function.new(3, Rational(5, 7), 6)].each do |e|
      context "given #{e}" do
        subject {Graph.new e}
        it "should not raise error" do expect{Graph.new e}.to_not raise_error end
        context Graph.new(e).to_s do
          it "should not raise error" do expect{Graph.new(e).to_s}.to_not raise_error end
        end
      end
    end
  end
end
