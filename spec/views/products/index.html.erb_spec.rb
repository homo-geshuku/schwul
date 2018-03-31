require "rails_helper"

RSpec.describe "products/index", type: :view do
  before do
    assign(:products, [
      Product.create!(
        type: 2,
        title: "Title",
        description: "MyText",
        year_produced: 3,
      ),
      Product.create!(
        type: 2,
        title: "Title",
        description: "MyText",
        year_produced: 3,
      ),
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
