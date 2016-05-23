require 'spec_helper'

describe "colaborators/new" do
  before(:each) do
    assign(:colaborator, stub_model(Colaborator,
      :name => "MyString",
      :age => 1,
      :salary => 1.5
    ).as_new_record)
  end

  it "renders new colaborator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", colaborators_path, "post" do
      assert_select "input#colaborator_name[name=?]", "colaborator[name]"
      assert_select "input#colaborator_age[name=?]", "colaborator[age]"
      assert_select "input#colaborator_salary[name=?]", "colaborator[salary]"
    end
  end
end
