require "rails_helper"

RSpec.describe "products/new", type: :view do
  before do
    assign(:product, Product.new(
                       type: 1,
                       title: "MyString",
                       description: "MyText",
                       year_produced: 1,
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input[name=?]", "product[type]"

      assert_select "input[name=?]", "product[title]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[year_produced]"
    end
  end
end
