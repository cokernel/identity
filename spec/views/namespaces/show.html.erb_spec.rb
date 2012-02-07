require 'spec_helper'

describe "namespaces/show" do
  before(:each) do
    @namespace = assign(:namespace, stub_model(Namespace,
      :identifier => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
