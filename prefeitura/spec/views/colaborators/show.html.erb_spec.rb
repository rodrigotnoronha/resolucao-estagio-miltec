require 'spec_helper'

describe "colaborators/show" do
  before(:each) do
    @colaborator = assign(:colaborator, stub_model(Colaborator,
      :name => "Name",
      :age => 1,
      :salary => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
  end
end
