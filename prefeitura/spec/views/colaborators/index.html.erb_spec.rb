require 'spec_helper'

describe "colaborators/index" do
  before(:each) do
    assign(:colaborators, [
      stub_model(Colaborator,
        :name => "Name",
        :age => 1,
        :salary => 1.5
      ),
      stub_model(Colaborator,
        :name => "Name",
        :age => 1,
        :salary => 1.5
      )
    ])
  end

  it "renders a list of colaborators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
