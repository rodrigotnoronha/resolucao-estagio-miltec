require 'spec_helper'

describe "colaborators/new" do
  before(:each) do
    assign(:colaborator, stub_model(Colaborator,
      :name => "MyString",
      :idade => 1,
      :salario => 1.5
    ).as_new_record)
  end

  it "renders new colaborator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colaborators_path, "post" do
      assert_select "input#colaborator_name[name=?]", "colaborator[name]"
      assert_select "input#colaborator_idade[name=?]", "colaborator[idade]"
      assert_select "input#colaborator_salario[name=?]", "colaborator[salario]"
    end
  end
end
