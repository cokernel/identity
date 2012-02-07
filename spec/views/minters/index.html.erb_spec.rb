require 'spec_helper'

describe "minters/index" do
  before(:each) do
    assign(:minters, [
      stub_model(Minter,
        :template => "Template",
        :frozen_minter => "Frozen Minter"
      ),
      stub_model(Minter,
        :template => "Template",
        :frozen_minter => "Frozen Minter"
      )
    ])
  end

  it "renders a list of minters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Template".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Frozen Minter".to_s, :count => 2
  end
end
