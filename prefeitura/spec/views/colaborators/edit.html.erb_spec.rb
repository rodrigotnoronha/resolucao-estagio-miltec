require 'spec_helper'

describe "colaborators/edit" do
  before(:each) do
    @colaborator = assign(:colaborator, stub_model(Colaborator,
      :name => "MyString",
      :idade => 1,
      :salario => 1.5
    ))
  end

  it "renders the edit colaborator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colaborator_path(@colaborator), "post" do
      assert_select "input#colaborator_name[name=?]", "colaborator[name]"
      assert_select "input#colaborator_idade[name=?]", "colaborator[idade]"
      assert_select "input#colaborator_salario[name=?]", "colaborator[salario]"
    end
  end
end
