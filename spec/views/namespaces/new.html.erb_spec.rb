require 'spec_helper'

describe "namespaces/new" do
  before(:each) do
    assign(:namespace, stub_model(Namespace,
      :identifier => "9.99"
    ).as_new_record)
  end

  it "renders new namespace form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => namespaces_path, :method => "post" do
      assert_select "input#namespace_identifier", :name => "namespace[identifier]"
    end
  end
end
