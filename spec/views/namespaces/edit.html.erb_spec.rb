require 'spec_helper'

describe "namespaces/edit" do
  before(:each) do
    @namespace = assign(:namespace, stub_model(Namespace,
      :identifier => "9.99"
    ))
  end

  it "renders the edit namespace form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => namespaces_path(@namespace), :method => "post" do
      assert_select "input#namespace_identifier", :name => "namespace[identifier]"
    end
  end
end
