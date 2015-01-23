require "linear/direct_variation"
include Linear
RSpec.describe DirectVariation do
  describe "#new" do
    subject {DirectVariation.new rand}
    it {is_expected.to be_direct_variation}
    it {is_expected.to be_kind_of SlopeIntercept}
  end
end
