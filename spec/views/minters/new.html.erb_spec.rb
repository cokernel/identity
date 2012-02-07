require 'spec_helper'

describe "minters/new" do
  before(:each) do
    assign(:minter, stub_model(Minter,
      :template => "MyString",
      :frozen_minter => "MyString"
    ).as_new_record)
  end

  it "renders new minter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => minters_path, :method => "post" do
      assert_select "input#minter_template", :name => "minter[template]"
      assert_select "input#minter_frozen_minter", :name => "minter[frozen_minter]"
    end
  end
end
