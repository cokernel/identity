require 'spec_helper'

describe "minters/edit" do
  before(:each) do
    @minter = assign(:minter, stub_model(Minter,
      :template => "MyString",
      :frozen_minter => "MyString"
    ))
  end

  it "renders the edit minter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => minters_path(@minter), :method => "post" do
      assert_select "input#minter_template", :name => "minter[template]"
      assert_select "input#minter_frozen_minter", :name => "minter[frozen_minter]"
    end
  end
end
