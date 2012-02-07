require 'spec_helper'

describe "Minters" do
  describe "GET /minters" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get minters_path
      response.status.should be(200)
    end
  end
end
