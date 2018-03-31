require "rails_helper"

RSpec.describe "products/edit", type: :view do
  before do
    @product = assign(:product, Product.create!(
                                  type: 1,
                                  title: "MyString",
                                  description: "MyText",
                                  year_produced: 1,
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input[name=?]", "product[type]"

      assert_select "input[name=?]", "product[title]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[year_produced]"
    end
  end
end
