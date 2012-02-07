require 'spec_helper'

describe "minters/show" do
  before(:each) do
    @minter = assign(:minter, stub_model(Minter,
      :template => "Template",
      :frozen_minter => "Frozen Minter"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Template/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Frozen Minter/)
  end
end
