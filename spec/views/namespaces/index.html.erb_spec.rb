require 'spec_helper'

describe "namespaces/index" do
  before(:each) do
    assign(:namespaces, [
      stub_model(Namespace,
        :identifier => "9.99"
      ),
      stub_model(Namespace,
        :identifier => "9.99"
      )
    ])
  end

  it "renders a list of namespaces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
