require 'rails_helper'

describe "the add a list process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add product'
    fill_in 'Name', :with => 'Jacket'
    click_on 'Add'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Add'
    expect(page).to have_content 'errors'
  end
end
