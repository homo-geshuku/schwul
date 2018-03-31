require "rails_helper"

RSpec.describe "products/show", type: :view do
  before do
    @product = assign(:product, Product.create!(
                                  type: 2,
                                  title: "Title",
                                  description: "MyText",
                                  year_produced: 3,
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
  end
end
